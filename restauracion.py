import psycopg2
import subprocess
import os
import time

def respaldo():
    try:
        usuario = input("Ingresa el nombre del usuario: ")
        nombre_db = input("Ingrese el nombre de la base de datos a respaldar: ")
        archivo_respaldo = input("Ingrese el nombre para el archivo.sql (ubique el '.sql' al final): ")
        
        with open(f'C:/Respaldos/{archivo_respaldo}', 'w') as out:
            subprocess.Popen(f'pg_dump --username {usuario} --dbname {nombre_db}', shell=True, stdout=out)
            time.sleep(15)

    except subprocess.CalledProcessError as error:
        print(f"Error al ejecutar el comando: {error}")
    finally: 
        input("Respaldo generado satisfactoriamente, presione enter para volver al menú.")

def restaurar():
    try:
        usuario = input("Ingresa el nombre del usuario: ")
        nombre_db = input("Ingrese el nombre de la base de datos a restaurar: ")
        archivo_respaldo = input("Ingrese el nombre del archivo.sql (ubique el '.sql' al final): ")
        proceso = subprocess.Popen(f'createdb --username={usuario} {nombre_db}')
        time.sleep(10)
        proceso.kill()
        print("ingrese nuevamente su contraseña")
        with open(f'C:/Respaldos/{archivo_respaldo}', 'r') as inp:
            subprocess.Popen(f'psql --username={usuario} --dbname {nombre_db}', shell=True, stdin=inp)
        time.sleep(15)
        
    except subprocess.CalledProcessError as error:
        print(f"Error al ejecutar el comando: {error}")
    finally: 
        input("Base de datos restaurada satisfactoriamente, presione enter para volver al menú.")

