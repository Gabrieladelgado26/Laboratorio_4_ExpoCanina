
<%@page import="com.mundo.expocaninawebapp.Serializacion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mundo.expocaninawebapp.Perro"%>

<!-- Inclución de la plantilla de header -->
<%@include file= "templates/header.jsp" %>

<!-- Clase contenedora -->
<div class="container">
    <div class="row">
        <img src="./img/front.png" alt=""> <!-- Imagen en la parte superior de la página web -->
        <!-- Columna izquierda para el formulario -->
        <div class="col-lg-4 col-md-4"> <!-- Clase de división en cuatro columnas -->
            <div class="card card-body"> <!-- Tarjeta de trabajo -->
                <!-- Acción que conecta con el servlet llamado SvExpCanina por metodo POST-->
                <form action="SvExpCanina" method="POST" enctype="multipart/form-data"> <!-- Esta sentencia es para subir archivos -->
                    <h3>Insertar nuevo perro</h3><br> <!-- Titulo del formulario para insertar un perro -->
                    
                    <!-- Formulario que recibe todos los datos para insertar un nuevo perro -->
                    <div class="col-auto">
                        <label class="visually-hidden" for="nombre">Nombre</label>
                        <div class="input-group">
                            <div class="input-group-text">Nombre:</div>
                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                        </div>
                    </div>

                    <br><div class="col-auto">
                        <label class="visually-hidden" for="raza">Raza</label>
                        <div class="input-group">
                            <div class="input-group-text">Raza:</div>
                            <input type="text" class="form-control" id="raza" name="raza" required>
                        </div>
                    </div>

                    <br><div class="col-auto">
                        <label class="visually-hidden" for="imagen">Imagen</label>
                        <div class="input-group">
                            <div class="input-group-text">Imagen:</div>
                            <input type="file" class="form-control" id="imagen" name="imagen" accept=".jpg, .jpeg, .png" required>
                        </div>
                    </div>

                    <br><div class="col-auto">
                        <label class="visually-hidden" for="puntos">Puntos</label>
                        <div class="input-group">
                            <div class="input-group-text">Puntos</div>
                            <select class="form-select" name="puntos" aria-label="Default select example" required>
                                <option value="" disabled selected>Seleccione una opción</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                            </select>
                        </div>
                    </div>

                    <br><div class="col-auto">
                        <label class="visually-hidden" for="edad">Edad</label>
                        <div class="input-group">
                            <div class="input-group-text">Edad:</div>
                            <input type="text" class="form-control" id="edad" name="edad" required pattern="[0-9]+" title="Por favor, ingrese solo números">
                        </div>
                    </div>
                    <!-- Botón de tipo submit que permite insertar un perro -->
                    <br><button type="submit" class="btn btn-success">Insertar Perro</button>
                </form>
            </div>
        </div>

        <!-- Columna del lado derecho para la tabla de datos -->
        <div class="col-lg-8 col-md-8"> <!-- Clase de división en ocho columnas -->
            <div class="card card-body"> <!-- Tarjeta de trabajo -->
                <table class="table table-dark table-striped"> <!-- Estilo de la tabla de datos -->
                    <thead>
                        <tr>
                            <!-- Titulos de la tabla de datos -->
                            <th>Nombre</th>
                            <th>Raza</th>
                            <th>Foto</th>
                            <th>Puntos</th>
                            <th>Edad</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            //Crear una lista para almacenar objetos Perro
                            ArrayList<Perro> misPerros = new ArrayList<>();

                            //Obtener el contexto del servlet
                            ServletContext context = getServletContext();

                            //Cargar la lista de perros desde un archivo
                            Serializacion.leerArchivo(misPerros, context);
                            
                            //Condicional que verifica si la lista de perros no esta vacia
                            if (!misPerros.isEmpty()) {
                                for (Perro perro : misPerros) {
                        %>                   
                        <tr>
                            
                            <!-- Muestra los datos ingresados en la tabla -->
                            <td><%= perro.getNombre()%></td>
                            <td><%= perro.getRaza()%></td>
                            <td><img src="<%= request.getContextPath()%>/imgPerros/<%= perro.getImagen()%>" style="width: 200px;" alt="Imagen de perro"></td>
                            <td><%= perro.getPuntos()%></td>
                            <td><%= perro.getEdad()%></td>
                            <!-- Iconos de acciones -->
                            <td>
                                <a href="SvExpCanina?id=<%=perro.getNombre()%>"><i class="fa fa-eye"></i></a>
                                <i class="fa fa-marker"></i>
                                <i class="fa fa-trash-alt"></i>
                            </td>               
                        </tr>
                        <% }
                            } else 
                            {
                                // Si el ArrayList esta vacio envia un mensaje informando al usuario
                                out.println("<tr>");
                                // colspan="6" Sirve para ocupar todas las columnas de la tabla de datos
                                out.println("<td colspan='6'>No hay perros registrados</td>");
                                out.println("<tr>");
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Button trigger modal 
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch demo modal
</button>
-->

    <!-- Modal 
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            ...
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>
        </div>
      </div>
    </div>
    -->
                    
<!-- Inclución de la plantilla de footer -->
<%@include file= "templates/footer.jsp" %>