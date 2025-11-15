#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "usuarios.h"
#include "productos.h"

#define MAX_ITEMS_VENTA 50

void obtenerFechaActual(char *fecha)
{
    time_t t = time(NULL);
    struct tm *tm_info = localtime(&t);
    strftime(fecha, 20, "%Y-%m-%d", tm_info);
}

void limpiarBuffer()
{
    int c;
    while ((c = getchar()) != '\n' && c != EOF)
        ;
}

int main()
{
    Usuario usuarios[MAX_USUARIOS];
    Producto productos[MAX_PRODUCTOS];

    // Cargar datos
    int numUsuarios = cargarUsuarios(usuarios, "vendedores.txt");
    int numProductos = cargarProductos(productos, "productos.txt");

    if (numUsuarios == 0)
    {
        printf("Error: No se pudieron cargar usuarios.\n");
        return 1;
    }

    if (numProductos == 0)
    {
        printf("Error: No se pudieron cargar productos.\n");
        return 1;
    }

    // LOGIN
    printf("=== SISTEMA DE VENTAS ===\n");
    int intentos = 0;
    int usuarioIdx = -1;

    while (intentos < 3)
    {
        char user[MAX_STRING], pass[MAX_STRING];

        printf("\nUsuario: ");
        if (scanf("%31s", user) != 1)
        {
            fprintf(stderr, "Error al leer usuario.\n");
            return 1;
        }

        printf("Clave: ");
        if (scanf("%31s", pass) != 1)
        {
            fprintf(stderr, "Error al leer clave.\n");
            return 1;
        }

        usuarioIdx = verificarUsuario(usuarios, numUsuarios, user, pass);

        if (usuarioIdx != -1)
        {
            printf("\n¡Bienvenido %s!\n", usuarios[usuarioIdx].nombre);
            break;
        }
        else
        {
            intentos++;
            printf("Credenciales incorrectas. Intento %d de 3\n", intentos);
        }
    }

    if (usuarioIdx == -1)
    {
        printf("\nDemasiados intentos fallidos. Sistema cerrado.\n");
        return 1;
    }

    // PROCESO DE VENTA
    char continuar = 's';

    while (continuar == 's' || continuar == 'S')
    {
        Venta ventasTemp[MAX_ITEMS_VENTA];
        int numItems = 0;
        char agregarMas = 's';

        // Obtener número de factura
        int numFactura = obtenerUltimaFactura("ventas.txt") + 1;
        char fecha[20];
        obtenerFechaActual(fecha);

        printf("\n=== NUEVA VENTA ===\n");
        printf("Fecha: %s\n", fecha);
        printf("Factura No: %d\n", numFactura);
        printf("==================\n\n");

        // Registrar productos
        while ((agregarMas == 's' || agregarMas == 'S') && numItems < MAX_ITEMS_VENTA)
        {
            char codigo[MAX_STRING];
            int cantidad;

            printf("Codigo del producto: ");
            if (scanf("%31s", codigo) != 1)
            {
                fprintf(stderr, "Error al leer código.\n");
                limpiarBuffer();
                continue;
            }

            int idx = buscarProducto(productos, numProductos, codigo);

            if (idx == -1)
            {
                printf("Producto no encontrado.\n");
                printf("¿Agregar otro producto? (s/n): ");
                limpiarBuffer();
                scanf("%c", &agregarMas);
                continue;
            }

            printf("Producto: %s\n", productos[idx].nombre);
            printf("Disponible: %d\n", productos[idx].cantidad);
            printf("Precio: $%.2f\n", productos[idx].precioVenta);

            printf("Cantidad a vender: ");
if (scanf("%d", &cantidad) != 1) {
    fprintf(stderr, "Error: ingresa un número válido.\n");
    limpiarBuffer();
    continue;
}


            if (cantidad > productos[idx].cantidad)
            {
                printf("Error: No hay suficiente inventario.\n");
                printf("¿Agregar otro producto? (s/n): ");
                limpiarBuffer();
                scanf("%c", &agregarMas);
                continue;
            }

            // Guardar en venta temporal
            ventasTemp[numItems].numFactura = numFactura;
            strcpy(ventasTemp[numItems].codigo, productos[idx].codigo);
            strcpy(ventasTemp[numItems].nombre, productos[idx].nombre);
            ventasTemp[numItems].cantidad = cantidad;
            ventasTemp[numItems].costo = productos[idx].costo;
            ventasTemp[numItems].precioVenta = productos[idx].precioVenta;
            strcpy(ventasTemp[numItems].fecha, fecha);

            numItems++;

            printf("\n¿Agregar otro producto? (s/n): ");
            limpiarBuffer();
            scanf("%c", &agregarMas);
        }

        if (numItems == 0)
        {
            printf("\nNo se registraron productos.\n");
            printf("\n¿Realizar otra venta? (s/n): ");
            limpiarBuffer();
            scanf("%c", &continuar);
            continue;
        }

        // Mostrar resumen
        printf("\n=== RESUMEN DE VENTA ===\n");
        printf("Factura: %d\n", numFactura);
        printf("Fecha: %s\n", fecha);
        printf("------------------------\n");
        printf("%-10s %-20s %8s %10s %10s\n", "Codigo", "Producto", "Cant.", "P.Unit", "Total");
        printf("----------------------------------------------------------------\n");

        float totalVenta = 0;
        for (int i = 0; i < numItems; i++)
        {
            float total = ventasTemp[i].cantidad * ventasTemp[i].precioVenta;
            totalVenta += total;
            printf("%-10s %-20s %8d %10.2f %10.2f\n",
                   ventasTemp[i].codigo,
                   ventasTemp[i].nombre,
                   ventasTemp[i].cantidad,
                   ventasTemp[i].precioVenta,
                   total);
        }
        printf("----------------------------------------------------------------\n");
        printf("TOTAL: $%.2f\n", totalVenta);

        // Confirmación
        char confirmar;
        printf("\n¿Confirmar venta? (s/n): ");
        limpiarBuffer();
        scanf("%c", &confirmar);

        if (confirmar == 's' || confirmar == 'S')
        {
            // Actualizar inventario y registrar ventas
            for (int i = 0; i < numItems; i++)
            {
                int idx = buscarProducto(productos, numProductos, ventasTemp[i].codigo);
                if (idx != -1)
                {
                    productos[idx].cantidad -= ventasTemp[i].cantidad;
                }
                registrarVenta(&ventasTemp[i], "ventas.txt");
            }

            guardarProductos(productos, numProductos, "productos.txt");
            printf("\n¡Venta registrada exitosamente!\n");
        }
        else
        {
            printf("\nVenta cancelada.\n");
        }

        printf("\n¿Realizar otra venta? (s/n): ");
        limpiarBuffer();
        scanf("%c", &continuar);
    }

    printf("\nGracias por usar el sistema. ¡Hasta pronto!\n");
    return 0;
}