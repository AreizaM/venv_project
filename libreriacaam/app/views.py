from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User
from django.contrib.auth import login, logout, authenticate
from django.db import IntegrityError
from .models import Categorias, Autores, Clientes, Libros


def categorias(req):
    categorias = Categorias.objects.all()
    return render(req, 'categorias.html', {'categorias': categorias})




def btn_eliminar_categoria(req, id):
    categorias = Categorias.objects.get(pk=id)
    categorias.delete()
    return redirect('categorias')

def btn_editar_categoria(req, id):
    categorias = Categorias.objects.get(pk=id)
    return render(req, 'categorias_editar.html', {
        'categorias': categorias
    })

def btn_agregar_categoria(req):
    return render(req, 'categorias_crear.html')


def editar_categoria(req):
    id = req.POST['id']
    categoria = req.POST['categoria']
    estado = req.POST['estado']

    categorias = Categorias()
    categorias.id_categoria = id
    categorias.categoria = categoria
    categorias.estado = estado
    categorias.save()

    return redirect("categorias")


def guardar_categoria(request):

    categoria_nombre = request.POST['categoria']
    estado = request.POST['estado']

    categorias = Categorias()
    categorias.categoria = categoria_nombre
    categorias.estado = estado
    categorias.save()

    return redirect("categorias")

def libros(req):
    libros = Libros.objects.all()
    context = {
        'libros': libros
    }
    return render(req, 'libros/libros.html', context)

def btn_eliminar_libros(req, id):
    libros = Libros.objects.get(pk=id)
    libros.delete()
    return redirect('libros')

def btn_editar_categoria(req, id):
    categorias = Categorias.objects.get(pk=id)
    return render(req, 'categorias_editar.html', {
        'categorias': categorias
    })

def btn_agregar_categoria(req):
    return render(req, 'categorias_crear.html')


def editar_categoria(req):
    id = req.POST['id']
    categoria = req.POST['categoria']
    estado = req.POST['estado']

    categorias = Categorias()
    categorias.id_categoria = id
    categorias.categoria = categoria
    categorias.estado = estado
    categorias.save()

    return redirect("categorias")


def guardar_categoria(request):

    categoria_nombre = request.POST['categoria']
    estado = request.POST['estado']

    categorias = Categorias()
    categorias.categoria = categoria_nombre
    categorias.estado = estado
    categorias.save()

    return redirect("categorias")


def autores(req):
    autores = Autores.objects.all()
    context = {
        'autores': autores
    }
    return render(req, 'autores/autores.html', context)

def btn_eliminar_autores(req, id):
    autores = Autores.objects.get(pk=id)
    autores.delete()
    return redirect('autores')

def btn_editar_autores(req, id):
    autores = Autores.objects.get(pk=id)
    return render(req, 'autores_editar.html', {
        'autores': autores
    })

def btn_agregar_autores(req):
    return render(req, 'autores_crear.html')


def editar_autores(req):
    id = req.POST['id']
    categoria = req.POST['categoria']
    estado = req.POST['estado']

    autores = Autores()
    autores.id_categoria = id
    autores.categoria = categoria
    autores.estado = estado
    autores.save()

    return redirect("autores")


def guardar_autores(request):

    categoria_nombre = request.POST['categoria']
    estado = request.POST['estado']

    autores = Autores()
    autores.categoria = categoria_nombre
    autores.estado = estado
    autores.save()

    return redirect("autores")


def clientes(req):
    clientes = Clientes.objects.all()
    context = {
        'clientes': clientes
    }
    return render(req, 'clientes/clientes.html', context)

def btn_eliminar_clientes(req, id):
    clientes = Clientes.objects.get(pk=id)
    clientes.delete()
    return redirect('clientes')

def btn_editar_clientes(req, id):
    clientes = Clientes.objects.get(pk=id)
    return render(req, 'clientes_editar.html', {
        'clientes': clientes
    })

def btn_agregar_clientes(req):
    return render(req, 'clientes_crear.html')


def editar_clientes(req):
    id = req.POST['id']
    categoria = req.POST['categoria']
    estado = req.POST['estado']

    clientes = Clientes()
    clientes.id_categoria = id
    clientes.categoria = categoria
    clientes.estado = estado
    clientes.save()

    return redirect("clientes")


def guardar_clientes(request):

    categoria_nombre = request.POST['categoria']
    estado = request.POST['estado']

    clientes = Clientes()
    clientes.categoria = categoria_nombre
    clientes.estado = estado
    clientes.save()

    return redirect("clientes")


def home(req):
    return render(req, 'home.html')


def login(req):
    if req.method == 'GET':
        return render(req, 'login.html', {
            'form': AuthenticationForm
        })
    else:
        user = authenticate(
            req, username=req.POST['username'], password=req.POST['password'])
        if user is None:
            return render(req, 'login.html', {
                'form': AuthenticationForm,
                'error': 'Usuario o contraseña incorrecto'
            })
        else:
            return redirect('home')


def singout(req):
    logout(req)
    return redirect('login')
