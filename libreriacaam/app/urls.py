from django.urls import path
from . import views


urlpatterns = [
    path('', views.login, name="login"),
    path('home/', views.home, name="home"),
    path('categorias/', views.categorias, name="categorias"),
    path('categorias/editar/<int:id>',
         views.btn_editar_categoria, name="editar_categorias"),
    path('categorias/', views.editar_categoria, name="editarC"),
    path('categorias/eliminar/<int:id>',
         views.btn_eliminar_categoria, name="eliminar_categorias"),
    path('categorias/agregar/', views.btn_agregar_categoria,
         name="agregar_categoria"),
    path('categorias/', views.guardar_categoria, name="agregarC"),
    path('libros/', views.libros, name="libros"),
    path('libros/eliminar/<int:id>',
         views.btn_eliminar_libros, name="eliminar_libros"),
    path('autores/', views.autores, name="autores"),
    path('autores/eliminar/<int:id>',
         views.btn_eliminar_autores, name="eliminar_autores"),
    path('clientes/', views.clientes, name="clientes"),
    path('clientes/eliminar/<int:id>',
         views.btn_eliminar_clientes, name="eliminar_clientes"),
    path('logout/', views.singout, name='logout'),

]
