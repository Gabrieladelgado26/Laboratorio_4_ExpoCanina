<%-- 
    Document   : index
    Created on : 20/09/2023, 7:51:33 p. m.
    Author     : Johan Ordoñez
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.mundo.expocaninawebapp.Perro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Expo Canina</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <div class="container text-center">
            <img src="./img/front.jpeg" alt=""/><br>
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="card card-body"> <!-- Tarjeta de trabajo -->
                        <form action ="SvExpCanina" method = "POST" >
                            <h1>Insertar nuevo perro</h1><br>
                            <div class="col-auto">
                                <label class="visually-hidden" for="nombre">Nombre</label>
                                <div class="input-group">
                                    <div class="input-group-text">Nombre</div>
                                    <input type="text" class="form-control" id="nombre" name="nombre"
                                </div>
                            </div>

                            <br><div class="col-auto">
                                <label class="visually-hidden" for="raza">Raza</label>
                                <div class="input-group">
                                    <div class="input-group-text">Raza</div>
                                    <input type="text" class="form-control" id="raza" name="raza"
                                </div>
                            </div>

                            <br><div class="col-auto">
                                <label class="visually-hidden" for="imagen">Imagen</label>
                                <div class="input-group">
                                    <div class="input-group-text">Imagen</div>
                                    <input type="text" class="form-control" id="imagen" name="imagen"
                                </div>
                            </div>

                            <br><div class="col-auto">
                                <label class="visually-hidden" for="puntos">Puntos</label>
                                <div class="input-group">
                                    <div class="input-group-text">Puntos</div>
                                    <select class="form-select" aria-label="Default select example">
                                        <option selected>Seleccione</option>
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
                                    <div class="input-group-text">Edad</div>
                                    <input type="text" class="form-control" id="edad" name="edad"
                                </div>
                            </div>
                        </div>
                    <br><button type="submit" class="btn btn-success">Insertar perro</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="col-lg-6 col-md-6">
    <div class="row">
            <div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Raza</th>
                            <th>Foto</th>
                            <th>Puntos</th>
                            <th>Edad</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <%
                                ArrayList<Perro> misPerros = new ArrayList<>();

                                for (Perro p : misPerros) {
                                    out.println("<td>" + p.getNombre() + "</td>");
                                    out.println("<td>" + p.getRaza() + "</td>");
                                    out.println("<td>" + p.getImagen() + "</td>");
                                    out.println("<td>" + p.getPuntos() + "</td>");
                                    out.println("<td>" + p.getEdad() + "</td>");
                                    out.println("<td>Editar</td>");
                                }
                            %>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>