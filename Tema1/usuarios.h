#ifndef USUARIOS_H
#define USUARIOS_H

#define MAX_USUARIOS 50
#define MAX_STRING 100

typedef struct {
    char usuario[MAX_STRING];
    char clave[MAX_STRING];
    char nombre[MAX_STRING];
} Usuario;

// Cargar usuarios desde archivo
int cargarUsuarios(Usuario usuarios[], const char *archivo);

// Verificar credenciales
int verificarUsuario(Usuario usuarios[], int numUsuarios, const char *user, const char *pass);

#endif