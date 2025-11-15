#include <stdio.h>
#include <string.h>
#include "usuarios.h"

int cargarUsuarios(Usuario usuarios[], const char *archivo) {
    FILE *fp = fopen(archivo, "r");
    if (fp == NULL) {
        printf("Error: No se pudo abrir el archivo %s\n", archivo);
        return 0;
    }
    
    int count = 0;
    char linea[300];
    
    while (fgets(linea, sizeof(linea), fp) && count < MAX_USUARIOS) {
        // Remover salto de línea
        linea[strcspn(linea, "\n")] = 0;
        
        // Parsear: Usuario,clave,Nombre
        char *token = strtok(linea, ",");
        if (token) strcpy(usuarios[count].usuario, token);
        
        token = strtok(NULL, ",");
        if (token) strcpy(usuarios[count].clave, token);
        
        token = strtok(NULL, ",");
        if (token) strcpy(usuarios[count].nombre, token);
        
        count++;
    }
    
    fclose(fp);
    return count;
}

int verificarUsuario(Usuario usuarios[], int numUsuarios, const char *user, const char *pass) {
    for (int i = 0; i < numUsuarios; i++) {
        if (strcmp(usuarios[i].usuario, user) == 0 && 
            strcmp(usuarios[i].clave, pass) == 0) {
            return i; // Retorna índice del usuario
        }
    }
    return -1; // No encontrado
}