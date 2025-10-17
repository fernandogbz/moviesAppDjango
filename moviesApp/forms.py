from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from .models import Pelicula, Director, Genero, Reseña

class DirectorForm(forms.ModelForm):
    class Meta:
        model = Director
        fields = ['nombre', 'nacionalidad', 'fechaNacimiento']
        widgets = {
            'nombre': forms.TextInput(attrs={'class': 'form-control'}),
            'nacionalidad': forms.TextInput(attrs={'class': 'form-control'}),
            'fechaNacimiento': forms.DateInput(attrs={'class': 'form-control', 'type': 'date'}),
        }

class GeneroForm(forms.ModelForm):
    class Meta:
        model = Genero
        fields = ['nombre', 'descripcion']
        widgets = {
            'nombre': forms.TextInput(attrs={'class': 'form-control'}),
            'descripcion': forms.Textarea(attrs={'class': 'form-control', 'rows': 3}),
        }

class PeliculaForm(forms.ModelForm):
    class Meta:
        model = Pelicula
        fields = ['titulo', 'descripcion', 'fechaEstreno', 'poster', 'duracion', 'directores', 'generos']
        widgets = {
            'titulo': forms.TextInput(attrs={'class': 'form-control'}),
            'descripcion': forms.Textarea(attrs={'class': 'form-control', 'rows': 4}),
            'fechaEstreno': forms.DateInput(attrs={'class': 'form-control', 'type': 'date'}),
            'poster': forms.FileInput(attrs={'class': 'form-control'}),
            'duracion': forms.NumberInput(attrs={'class': 'form-control'}),
            'directores': forms.CheckboxSelectMultiple(attrs={'class': 'form-check-input'}),
            'generos': forms.CheckboxSelectMultiple(attrs={'class': 'form-check-input'}),
        }
        
    def __init__(self, *args, **kwargs):
      super().__init__(*args, **kwargs)
      # Hacer directores y géneros opcionales
      self.fields['directores'].required = False
      self.fields['generos'].required = False
      self.fields['poster'].required = False

class ReseñaForm(forms.ModelForm):
    class Meta:
        model = Reseña
        fields = ['calificacion', 'comentario']
        widgets = {
            'calificacion': forms.Select(
                choices=[(i, i) for i in range(1, 6)],
                attrs={'class': 'form-control'}
            ),
            'comentario': forms.Textarea(attrs={'class': 'form-control', 'rows': 4}),
        }

class CustomUserCreationForm(UserCreationForm):
    email = forms.EmailField(required=True)
    first_name = forms.CharField(max_length=30, required=True)
    last_name = forms.CharField(max_length=30, required=True)

    class Meta:
        model = User
        fields = ('username', 'first_name', 'last_name', 'email', 'password1', 'password2')

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for field in self.fields:
            self.fields[field].widget.attrs.update({'class': 'form-control'})

    def save(self, commit=True):
        user = super().save(commit=False)
        user.email = self.cleaned_data['email']
        user.first_name = self.cleaned_data['first_name']
        user.last_name = self.cleaned_data['last_name']
        if commit:
            user.save()
        return user

class PeliculaFilterForm(forms.Form):
    titulo = forms.CharField(
        max_length=200, 
        required=False,
        widget=forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Buscar por título'})
    )
    genero = forms.ModelChoiceField(
        queryset=Genero.objects.all(),
        required=False,
        empty_label="Todos los géneros",
        widget=forms.Select(attrs={'class': 'form-control'})
    )
    director = forms.ModelChoiceField(
        queryset=Director.objects.all(),
        required=False,
        empty_label="Todos los directores",
        widget=forms.Select(attrs={'class': 'form-control'})
    )
    año_desde = forms.IntegerField(
        required=False,
        widget=forms.NumberInput(attrs={'class': 'form-control', 'placeholder': 'Año desde'})
    )
    año_hasta = forms.IntegerField(
        required=False,
        widget=forms.NumberInput(attrs={'class': 'form-control', 'placeholder': 'Año hasta'})
    )
