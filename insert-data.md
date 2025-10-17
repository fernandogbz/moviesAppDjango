python manage.py shell

from moviesApp.models import Pelicula, Director, Genero, Reseña
from django.contrib.auth.models import User
from datetime import datetime, date

# 1. CREAR DIRECTORES
directores_data = [
    {"nombre": "Christopher Nolan", "nacionalidad": "Reino Unido", "fechaNacimiento": date(1970, 7, 30)},
    {"nombre": "Quentin Tarantino", "nacionalidad": "Estados Unidos", "fechaNacimiento": date(1963, 3, 27)},
    {"nombre": "Martin Scorsese", "nacionalidad": "Estados Unidos", "fechaNacimiento": date(1942, 11, 17)},
    {"nombre": "Steven Spielberg", "nacionalidad": "Estados Unidos", "fechaNacimiento": date(1946, 12, 18)},
    {"nombre": "Denis Villeneuve", "nacionalidad": "Canadá", "fechaNacimiento": date(1967, 10, 3)},
    {"nombre": "Greta Gerwig", "nacionalidad": "Estados Unidos", "fechaNacimiento": date(1983, 8, 4)},
    {"nombre": "Jordan Peele", "nacionalidad": "Estados Unidos", "fechaNacimiento": date(1979, 2, 21)},
    {"nombre": "Bong Joon-ho", "nacionalidad": "Corea del Sur", "fechaNacimiento": date(1969, 9, 14)}
]

for d in directores_data:
    Director.objects.get_or_create(
        nombre=d["nombre"],
        defaults={"nacionalidad": d["nacionalidad"], "fechaNacimiento": d["fechaNacimiento"]}
    )

# 2. CREAR GÉNEROS
generos_data = [
    {"nombre": "Acción", "descripcion": "Películas llenas de aventura y secuencias emocionantes"},
    {"nombre": "Drama", "descripcion": "Historias emotivas centradas en el desarrollo de personajes"},
    {"nombre": "Comedia", "descripcion": "Películas diseñadas para entretener y hacer reír"},
    {"nombre": "Terror", "descripcion": "Películas que buscan asustar y crear suspense"},
    {"nombre": "Ciencia Ficción", "descripcion": "Historias futuristas o con elementos científicos avanzados"},
    {"nombre": "Romance", "descripcion": "Historias de amor y relaciones románticas"},
    {"nombre": "Thriller", "descripcion": "Películas de suspenso que mantienen al espectador en tensión"},
    {"nombre": "Fantasía", "descripcion": "Mundos imaginarios con elementos mágicos o sobrenaturales"},
    {"nombre": "Crimen", "descripcion": "Historias sobre actividades criminales y justicia"},
    {"nombre": "Animación", "descripcion": "Películas creadas mediante técnicas de animación"}
]

for g in generos_data:
    Genero.objects.get_or_create(
        nombre=g["nombre"],
        defaults={"descripcion": g["descripcion"]}
    )

# 3. CREAR PELÍCULAS
peliculas_data = [
    {
        "titulo": "Inception",
        "descripcion": "Un ladrón que roba secretos del subconsciente es dado la tarea inversa de plantar una idea en la mente de un CEO.",
        "duracion": 148,
        "fechaEstreno": date(2010, 7, 16),
        "directores": ["Christopher Nolan"],
        "generos": ["Ciencia Ficción", "Thriller", "Acción"]
    },
    {
        "titulo": "Pulp Fiction",
        "descripcion": "Las vidas de dos sicarios, un boxeador, la esposa de un gángster y dos bandidos se entrelazan en cuatro historias de violencia y redención.",
        "duracion": 154,
        "fechaEstreno": date(1994, 10, 14),
        "directores": ["Quentin Tarantino"],
        "generos": ["Crimen", "Drama"]
    },
    {
        "titulo": "The Departed",
        "descripcion": "Un policía encubierto y un informante de la policía intentan identificarse mutuamente mientras se infiltran en una banda irlandesa en Boston.",
        "duracion": 151,
        "fechaEstreno": date(2006, 10, 6),
        "directores": ["Martin Scorsese"],
        "generos": ["Crimen", "Drama", "Thriller"]
    },
    {
        "titulo": "Jurassic Park",
        "descripcion": "Un parque temático sufre un fallo de seguridad y libera dinosaurios clonados genéticamente en una isla remota.",
        "duracion": 127,
        "fechaEstreno": date(1993, 6, 11),
        "directores": ["Steven Spielberg"],
        "generos": ["Aventura", "Ciencia Ficción", "Thriller"]
    },
    {
        "titulo": "Dune",
        "descripcion": "Paul Atreides lidera una rebelión para liberar su hogar del control de enemigos, mientras lucha con la visión de un futuro oscuro.",
        "duracion": 155,
        "fechaEstreno": date(2021, 10, 22),
        "directores": ["Denis Villeneuve"],
        "generos": ["Ciencia Ficción", "Aventura", "Drama"]
    },
    {
        "titulo": "Lady Bird",
        "descripcion": "Una estudiante de secundaria de Sacramento sueña con la vida más allá de su ciudad natal católica.",
        "duracion": 94,
        "fechaEstreno": date(2017, 11, 3),
        "directores": ["Greta Gerwig"],
        "generos": ["Comedia", "Drama"]
    },
    {
        "titulo": "Get Out",
        "descripcion": "Un joven afroamericano visita a la familia de su novia blanca y descubre secretos perturbadores.",
        "duracion": 104,
        "fechaEstreno": date(2017, 2, 24),
        "directores": ["Jordan Peele"],
        "generos": ["Terror", "Thriller", "Misterio"]
    },
    {
        "titulo": "Parasite",
        "descripcion": "Una familia pobre planea un esquema para infiltrarse en la casa de una familia rica.",
        "duracion": 132,
        "fechaEstreno": date(2019, 5, 30),
        "directores": ["Bong Joon-ho"],
        "generos": ["Comedy", "Drama", "Thriller"]
    },
    {
        "titulo": "The Dark Knight",
        "descripcion": "Batman debe aceptar una de las pruebas psicológicas y físicas más grandes para combatir al Joker.",
        "duracion": 152,
        "fechaEstreno": date(2008, 7, 18),
        "directores": ["Christopher Nolan"],
        "generos": ["Acción", "Crimen", "Drama"]
    },
    {
        "titulo": "Goodfellas",
        "descripcion": "La historia de Henry Hill y su vida en la mafia, cubriendo su relación con su esposa Karen y sus socios Jimmy y Tommy.",
        "duracion": 146,
        "fechaEstreno": date(1990, 9, 21),
        "directores": ["Martin Scorsese"],
        "generos": ["Biography", "Crimen", "Drama"]
    }
]

for p in peliculas_data:
    pelicula, created = Pelicula.objects.get_or_create(
        titulo=p["titulo"],
        defaults={
            "descripcion": p["descripcion"],
            "duracion": p["duracion"],
            "fechaEstreno": p["fechaEstreno"]
        }
    )
    
    if created:
        # Asignar directores
        for director_nombre in p["directores"]:
            director = Director.objects.get(nombre=director_nombre)
            pelicula.directores.add(director)
        
        # Asignar géneros
        for genero_nombre in p["generos"]:
            try:
                genero = Genero.objects.get(nombre=genero_nombre)
                pelicula.generos.add(genero)
            except Genero.DoesNotExist:
                pass

# 4. CREAR USUARIOS DE PRUEBA
usuarios_data = [
    {"username": "cinephile1", "email": "cine1@test.com", "first_name": "Ana", "last_name": "García"},
    {"username": "moviefan", "email": "fan@test.com", "first_name": "Carlos", "last_name": "López"},
    {"username": "critic_pro", "email": "critic@test.com", "first_name": "María", "last_name": "Rodríguez"},
    {"username": "filmstudent", "email": "student@test.com", "first_name": "Diego", "last_name": "Martínez"}
]

for u in usuarios_data:
    user, created = User.objects.get_or_create(
        username=u["username"],
        defaults={
            "email": u["email"],
            "first_name": u["first_name"],
            "last_name": u["last_name"]
        }
    )
    if created:
        user.set_password("password123")
        user.save()

# 5. CREAR RESEÑAS
import random
from datetime import timedelta

peliculas = Pelicula.objects.all()
usuarios = User.objects.filter(username__in=["cinephile1", "moviefan", "critic_pro", "filmstudent"])

comentarios_positivos = [
    "¡Increíble película! La cinematografía es espectacular.",
    "Una obra maestra del cine moderno. Altamente recomendada.",
    "Excelente dirección y actuaciones sobresalientes.",
    "Una experiencia cinematográfica única e inolvidable.",
    "Brillante guión y desarrollo de personajes excepcional."
]

comentarios_neutrales = [
    "Buena película, aunque tiene algunos momentos lentos.",
    "Entretenida pero no excepcional. Vale la pena verla.",
    "Está bien, cumple con las expectativas básicas.",
    "Película decente con algunos altibajos en el ritmo.",
    "No está mal, pero tampoco es nada extraordinario."
]

comentarios_negativos = [
    "No me convenció del todo. Esperaba más del director.",
    "La trama se siente predecible en muchos momentos.",
    "Buena producción pero la historia no me enganchó.",
    "Técnicamente sólida pero le falta algo especial."
]

for pelicula in peliculas:
    # Crear entre 2-5 reseñas por película
    num_reviews = random.randint(2, 5)
    usuarios_sample = random.sample(list(usuarios), min(num_reviews, len(usuarios)))
    
    for usuario in usuarios_sample:
        calificacion = random.randint(1, 5)
        
        if calificacion >= 4:
            comentario = random.choice(comentarios_positivos)
        elif calificacion == 3:
            comentario = random.choice(comentarios_neutrales)
        else:
            comentario = random.choice(comentarios_negativos)
        
        fecha_random = pelicula.fechaEstreno + timedelta(days=random.randint(30, 365))
        
        Reseña.objects.get_or_create(
            usuario=usuario,
            pelicula=pelicula,
            defaults={
                "calificacion": calificacion,
                "comentario": comentario,
                "fecha": fecha_random
            }
        )

print("¡Datos creados exitosamente!")
print(f"Directores: {Director.objects.count()}")
print(f"Géneros: {Genero.objects.count()}")
print(f"Películas: {Pelicula.objects.count()}")
print(f"Usuarios: {User.objects.count()}")
print(f"Reseñas: {Reseña.objects.count()}")
