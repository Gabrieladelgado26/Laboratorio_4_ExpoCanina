<%@include file="Templates/header.jsp" %>

<div class="container text-center">
    <img src="./img/front.png" alt=""/><br>
    <div class="row">
        <div class="col"> <!-- Clase división -->
            <div class="card card-body"> <!-- Tarjeta de trabajo -->
                <form action ="SvExpCanina" method = "POST" >
                    <div class="col-auto">
                        <label class="visually-hidden" for="nombre">Nombre</label>
                        <div class="input-group">
                            <div class="input-group-text">Nombre</div>
                            <input type="text" class="form-control" id="nombre" name="nombre"
                        </div>
                    </div>

                    <div class="col-auto">
                        <label class="visually-hidden" for="raza">Raza</label>
                        <div class="input-group">
                            <div class="input-group-text">Raza</div>
                            <input type="text" class="form-control" id="raza" name="raza"
                        </div>
                    </div>

                    <div class="col-auto">
                        <label class="visually-hidden" for="imagen">Imagen</label>
                        <div class="input-group">
                            <div class="input-group-text">Imagen</div>
                            <input type="text" class="form-control" id="imagen" name="imagen"
                        </div>
                    </div>

                    <div class="col-auto">
                        <label class="visually-hidden" for="raza">Puntos</label>
                        <div class="input-group">
                            <div class="input-group-text">Puntos</div>
                            <div class="col-sm-3">
                                <label class="visually-hidden" for="puntos">Puntos</label>
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
                    </div>

                    <div class="col-auto">
                        <label class="visually-hidden" for="edad">Edad</label>
                        <div class="input-group">
                            <div class="input-group-text">Edad</div>
                            <input type="text" class="form-control" id="edad" name="edad"
                        </div>
                    </div>

                    <input class="form-control" type="submit" value="Agregar perro">
                </form>
                <br><a href="index.jsp">Regresar al inicio</a>
            </div>
        </div>

        <div class="col"> 
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
                        <td>Martina</td>
                        <td>Mestiza</td>
                        <td>.</td>
                        <td>5</td>
                        <td>6 años</td>
                        <td>Editar Borrar</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@include file="Templates/footer.jsp" %>