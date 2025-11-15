#!/bin/bash

echo "Genere los siguientes archivos para el programa del numeral 1:"
echo ""

# Limpiar archivos previos
rm -f *.s *.o *_disasm.s

echo "1. Generando archivos Assembly (.s)"
gcc -S main.c -o main.s
gcc -S usuarios.c -o usuarios.s
gcc -S productos.c -o productos.s
echo "  *.s generados"
echo ""

echo "2. Generando archivos Objeto (.o)"
gcc -c main.c -o main.o
gcc -c usuarios.c -o usuarios.o
gcc -c productos.c -o productos.o
echo "   *.o generados"
echo ""

echo "3. Use objdump para regresar del *.o al *.s"
objdump -d main.o > main_disasm.s
objdump -d usuarios.o > usuarios_disasm.s
objdump -d productos.o > productos_disasm.s
echo "    Archivos desensamblados generados"
echo ""

echo "Resumen de archivos generados:"
ls -lh *.s *.o
echo ""
echo "Listo"
