<div align="center">
  <div>
    <img src="https://img.shields.io/badge/-Django-black?style=for-the-badge&logo=django&logoColor=white&color=092E20" alt="django" />
    <img src="https://img.shields.io/badge/-Python-black?style=for-the-badge&logoColor=white&logo=python&color=3776AB" alt="python" />
    <img src="https://img.shields.io/badge/-Bootstrap-black?style=for-the-badge&logoColor=white&logo=bootstrap&color=563D7C" alt="bootstrap" />
    <img src="https://img.shields.io/badge/-MySQL-black?style=for-the-badge&logoColor=white&logo=mysql&color=4479A1" alt="mysql" />
  </div>

  <h3 align="center">Movies App - Gestión de Películas</h3>
</div>

## 📋 Tabla de Contenidos

1. 🤖 Introducción
2. ⚙️ Stack Tecnológico
3. 🔋 Funcionalidades
4. 🤸 Inicio Rápido


## 🤖 Introducción

Aplicación web para gestionar películas, directores, géneros y reseñas. Implementada con Django, usa templates y Bootstrap para la interfaz. Incluye autenticación y CRUD para las entidades principales.


## ⚙️ Stack Tecnológico

- Django
- Python
- Bootstrap 5
- MySQL
- HTML / CSS / JavaScript (templates)


## 🔋 Funcionalidades

👉 Registro, login y logout de usuarios.

👉 Roles: usuarios y administradores (is_staff / is_superuser).

👉 CRUD para:
- Películas (poster upload, relaciones con directores y géneros).
- Directores (nombre, nacionalidad, fechaNacimiento).
- Géneros (nombre, descripción).
- Reseñas (usuario, película, calificación, comentario, fecha).

👉 Validación de formularios con Django Forms.

👉 Paginación y filtros en listados.


## 🤸 Inicio Rápido

Sigue estos pasos para configurar el proyecto localmente.

**Prerrequisitos**

- Python
- MySQL
- Git

**Clonar el repositorio**

```bash
git clone https://github.com/fernandogbz/moviesAppDjango.git
cd moviesAppDjango
```

**Entorno virtual e instalación de dependencias**

```bash
python -m venv .venv
.venv\Scripts\activate    # Windows CMD
pip install -r requirements.txt
```

**Configurar la base de datos (MySQL)**

Editar `ev2Jimenez/settings.py` y configurar la sección DATABASES con las credenciales MySQL:

```py
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'tu_basedatos',
        'USER': 'tu_usuario',
        'PASSWORD': 'tu_contraseña',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}
```

**Migraciones y superusuario**

```bash
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser
```

**Ejecutar servidor**

```bash
python manage.py runserver
# Abrir http://127.0.0.1:8000/
```



