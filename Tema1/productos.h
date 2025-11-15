#ifndef PRODUCTOS_H
#define PRODUCTOS_H

#define MAX_PRODUCTOS 200
#define MAX_STRING 100

typedef struct {
    char codigo[MAX_STRING];
    char nombre[MAX_STRING];
    int cantidad;
    float costo;
    float precioVenta;
} Producto;

typedef struct {
    int numFactura;
    char codigo[MAX_STRING];
    char nombre[MAX_STRING];
    int cantidad;
    float costo;
    float precioVenta;
    char fecha[20];
} Venta;

// Cargar productos desde archivo
int cargarProductos(Producto productos[], const char *archivo);

// Guardar productos al archivo
int guardarProductos(Producto productos[], int numProductos, const char *archivo);

// Buscar producto por código
int buscarProducto(Producto productos[], int numProductos, const char *codigo);

// Obtener último número de factura
int obtenerUltimaFactura(const char *archivo);

// Registrar venta
int registrarVenta(Venta *venta, const char *archivo);

#endif