#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "productos.h"

int cargarProductos(Producto productos[], const char *archivo) {
    FILE *fp = fopen(archivo, "r");
    if (fp == NULL) {
        printf("Error: No se pudo abrir el archivo %s\n", archivo);
        return 0;
    }
    
    int count = 0;
    char linea[300];
    
    while (fgets(linea, sizeof(linea), fp) && count < MAX_PRODUCTOS) {
        linea[strcspn(linea, "\n")] = 0;
        
        // Parsear: Codigo,Nombre,cantidad,costo,precio_venta
        char *token = strtok(linea, ",");
        if (token) strcpy(productos[count].codigo, token);
        
        token = strtok(NULL, ",");
        if (token) strcpy(productos[count].nombre, token);
        
        token = strtok(NULL, ",");
        if (token) productos[count].cantidad = atoi(token);
        
        token = strtok(NULL, ",");
        if (token) productos[count].costo = atof(token);
        
        token = strtok(NULL, ",");
        if (token) productos[count].precioVenta = atof(token);
        
        count++;
    }
    
    fclose(fp);
    return count;
}

int guardarProductos(Producto productos[], int numProductos, const char *archivo) {
    FILE *fp = fopen(archivo, "w");
    if (fp == NULL) {
        printf("Error: No se pudo abrir el archivo %s para escritura\n", archivo);
        return 0;
    }
    
    for (int i = 0; i < numProductos; i++) {
        fprintf(fp, "%s,%s,%d,%.2f,%.2f\n",
                productos[i].codigo,
                productos[i].nombre,
                productos[i].cantidad,
                productos[i].costo,
                productos[i].precioVenta);
    }
    
    fclose(fp);
    return 1;
}

int buscarProducto(Producto productos[], int numProductos, const char *codigo) {
    for (int i = 0; i < numProductos; i++) {
        if (strcmp(productos[i].codigo, codigo) == 0) {
            return i;
        }
    }
    return -1;
}

int obtenerUltimaFactura(const char *archivo) {
    FILE *fp = fopen(archivo, "r");
    if (fp == NULL) {
        return 0; // Si no existe, primera factura es 1
    }
    
    int ultimaFactura = 0;
    char linea[300];
    
    while (fgets(linea, sizeof(linea), fp)) {
        int numFactura;
        sscanf(linea, "%d", &numFactura);
        if (numFactura > ultimaFactura) {
            ultimaFactura = numFactura;
        }
    }
    
    fclose(fp);
    return ultimaFactura;
}

int registrarVenta(Venta *venta, const char *archivo) {
    FILE *fp = fopen(archivo, "a");
    if (fp == NULL) {
        printf("Error: No se pudo abrir el archivo %s para escritura\n", archivo);
        return 0;
    }
    
    fprintf(fp, "%d,%s,%s,%d,%.2f,%.2f,%s\n",
            venta->numFactura,
            venta->codigo,
            venta->nombre,
            venta->cantidad,
            venta->costo,
            venta->precioVenta,
            venta->fecha);
    
    fclose(fp);
    return 1;
}