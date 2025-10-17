from django.urls import path
from . import views

urlpatterns = [
    # Vista principal
    path('', views.home, name='home'),
    
    # Películas
    path('peliculas/', views.pelicula_list, name='pelicula_list'),
    path('peliculas/<int:pk>/', views.pelicula_detail, name='pelicula_detail'),
    path('peliculas/crear/', views.pelicula_create, name='pelicula_create'),
    path('peliculas/<int:pk>/editar/', views.pelicula_edit, name='pelicula_edit'),
    path('peliculas/<int:pk>/eliminar/', views.pelicula_delete, name='pelicula_delete'),
    
    # Directores
    path('directores/', views.director_list, name='director_list'),
    path('directores/crear/', views.director_create, name='director_create'),
    path('directores/<int:pk>/editar/', views.director_edit, name='director_edit'),
    path('directores/<int:pk>/eliminar/', views.director_delete, name='director_delete'),
    
    # Géneros
    path('generos/', views.genero_list, name='genero_list'),
    path('generos/crear/', views.genero_create, name='genero_create'),
    path('generos/<int:pk>/editar/', views.genero_edit, name='genero_edit'),
    path('generos/<int:pk>/eliminar/', views.genero_delete, name='genero_delete'),
    
    # Reseñas
    path('peliculas/<int:pelicula_pk>/resena/', views.reseña_create, name='reseña_create'),
    path('resenas/', views.reseña_list, name='reseña_list'),
    
    # Ranking
    path('ranking/', views.ranking, name='ranking'),
    
    # Exportación
    path('export/peliculas/', views.export_peliculas_excel, name='export_peliculas'),
    
    # Registro (login/logout van en urls.py principal)
    path('registro/', views.register_view, name='register'),
]
