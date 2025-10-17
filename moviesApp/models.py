from django.db import models
from django.contrib.auth.models import User
from django.core.validators import MinValueValidator, MaxValueValidator

# Create your models here.

class Director(models.Model):
    idDirector = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100)
    nacionalidad = models.CharField(max_length=50)
    fechaNacimiento = models.DateField()
    
    class Meta:
        db_table = 'director'
        
    def __str__(self):
        return self.nombre

class Genero(models.Model):
    idGenero = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=50)
    descripcion = models.TextField()
    
    class Meta:
        db_table = 'genero'
        
    def __str__(self):
        return self.nombre

class Pelicula(models.Model):
    idPelicula = models.AutoField(primary_key=True)
    titulo = models.CharField(max_length=200)
    descripcion = models.TextField()
    fechaEstreno = models.DateField()
    poster = models.ImageField(upload_to='posters/', blank=True, null=True)
    duracion = models.IntegerField(help_text="Duración en minutos")
    directores = models.ManyToManyField(Director, related_name='peliculas')
    generos = models.ManyToManyField(Genero, related_name='peliculas')
    
    class Meta:
        db_table = 'pelicula'
        
    def __str__(self):
        return self.titulo
    
    def get_average_rating(self):
        reseñas = self.reseñas.all()
        if reseñas:
            return sum([r.calificacion for r in reseñas]) / len(reseñas)
        return 0
    
    def get_total_reviews(self):
        return self.reseñas.count()

class Reseña(models.Model):
    idReseña = models.AutoField(primary_key=True)
    pelicula = models.ForeignKey(Pelicula, on_delete=models.CASCADE, related_name='reseñas')
    usuario = models.ForeignKey(User, on_delete=models.CASCADE, related_name='reseñas')
    calificacion = models.IntegerField(
        validators=[MinValueValidator(1), MaxValueValidator(5)],
        help_text="Calificación del 1 al 5"
    )
    comentario = models.TextField()
    fecha = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        db_table = 'reseña'
        unique_together = ['pelicula', 'usuario']  # Un usuario solo puede dejar una reseña por película
        
    def __str__(self):
        return f'{self.usuario.username} - {self.pelicula.titulo} ({self.calificacion}/5)'
