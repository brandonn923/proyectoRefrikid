<%-- 
    Document   : administrador
    Created on : Dec 3, 2018, 6:00:39 PM
    Author     : Javir
--%>

<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ProductoDAO"%>
<%@page import="VO.ProductoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Agregar Menú</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link href="css/styleAdmin.css" rel="stylesheet" type="text/css"/>
  <!-- endinject -->
  <link rel="shortcut icon" href="img/favicon.png"/>
</head>
<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="index.html"><img src="img/images/logo.svg" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="index.html"><img src="img/images/logo-mini.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <div class="nav-profile-img">
                <img src="img/images/faces/face1.svg" alt="image">
                <span class="availability-status online"></span>             
              </div>
              <div class="nav-profile-text">
                <p class="mb-1 text-black">Administrador</p>
              </div>
            </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <div class="dropdown-divider"></div>
              <form method="POST" action="Usuario">
                <a class="dropdown-item" href="ingresar.jsp">
                    <i class="mdi mdi-logout mr-2 text-primary"></i>
                    Cerrar Sesión
                    <input type="hidden" name="opcion" value="3">
                </a>
                </form>
            </div>
          </li>
          <li class="nav-item nav-settings d-none d-lg-block">
            <a class="nav-link" href="#">
              <i class="mdi mdi-format-line-spacing"></i>
            </a>
          </li>
        </ul>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
              <div class="nav-profile-image">
                <img src="img/images/faces/face1.svg" alt="profile">
                <span class="login-status online"></span> <!--change to offline or busy as needed-->              
              </div>
              <div class="nav-profile-text d-flex flex-column">
                 <span class="font-weight-bold mb-2"></span>
                <span class="text-secondary text-small">Administrador</span>
              </div>
              <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="administrador.jsp">
              <span class="menu-title">Inicio</span>
              <i class="mdi mdi-home menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="menu.jsp">
              <span class="menu-title">Agregar Menú</span>
              <i class="mdi mdi-table-edit menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-title">Estándar Crecimiento</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-chart-line menu-icon"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="ninoslongitud0a5.jsp" target="_blank">Altura Niños 0 A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninaslongitudmax5.jsp" target="_blank">Altura Niños Mayores A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninospeso0a5.jsp" target="_blank">Peso Niños 0 A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninospesomax5.jsp" target="_blank">Peso Niños Mayores A 5 </a></li>
                <div class="dropdown-divider"></div>
                    <li class="nav-item"> <a class="nav-link" href="ninaslongitud0a5.jsp" target="_blank">Altura Niñas 0 A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninaslongitudmax5.jsp" target="_blank">Altura Niñas Mayores A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninaspeso0a5.jsp" target="_blank">Peso Niñas 0 A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="" target="_blank">Peso Niñas Mayores A 5 </a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="listaComida.jsp">
              <span class="menu-title">Lista de Alimentos</span>
              <i class="mdi mdi-menu menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="calendarioA.jsp">
              <span class="menu-title">Calendario</span>
              <i class="mdi mdi-calendar-blank menu-icon"></i>
            </a>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">        
        <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
              Creación del menú
            </h3>
          </div>
          <div class="row">
            <div class="col-12 grid-margin">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Agregar Alimentos</h4>
                  <form class="form-sample" action="Menu" method="post">
                    <p class="card-description">
                      Este modulo permite agregar diferentes alimentos en la construcción de un menú
                    </p>
                    <%   
                    ProductoVO productovo=new ProductoVO();
                    ProductoDAO productodao=new ProductoDAO(productovo);
                    %>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Vegetales o Hortalizas </label>
                          <div class="col-sm-9">
                            <select name="vegetal" class="form-control">
                                <option>-- SELECCIONE --</option>
                                <% ArrayList<ProductoVO>lista=productodao.listarvegetales();
                                for (int i = 0; i < lista.size(); i++) {
                                       productovo=lista.get(i);
                                %>
                                <option><%= productovo.getNombreProducto() %></option>
                                <% }%>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Legumbres</label>
                          <div class="col-sm-9">
                            <select name="legumbre" class="form-control">
                                <option>-- SELECCIONE --</option>
                                <% ProductoVO vo=new ProductoVO();
                                    ProductoDAO dao=new ProductoDAO(vo);
                                    ArrayList<ProductoVO>listauno=dao.listarlegumbres();
                                for (int i = 0; i < listauno.size(); i++) {
                                       vo=listauno.get(i);
                                %>
                                <option><%= vo.getNombreProducto() %></option>
                                <% }%>
                            </select>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Frutas</label>
                          <div class="col-sm-9">
                            <select name="fruta" class="form-control">
                                <option>-- SELECCIONE --</option>
                                <% ProductoVO pvo=new ProductoVO();
                                    ProductoDAO pdao=new ProductoDAO(pvo);
                                    ArrayList<ProductoVO>listados=pdao.listarfrutas();
                                for (int i = 0; i < listados.size(); i++) {
                                       pvo=listados.get(i);
                                %>
                                <option><%=pvo.getNombreProducto() %></option>
                                <% }%>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Carnes</label>
                          <div class="col-sm-9">
                             <select name="carne" class="form-control">
                                <option>-- SELECCIONE --</option>
                                <% ProductoVO prv=new ProductoVO();
                                    ProductoDAO pda=new ProductoDAO(prv);
                                    ArrayList<ProductoVO>listatres=pda.listarcarnes();
                                for (int i = 0; i < listatres.size(); i++) {
                                       prv=listatres.get(i);
                                %>
                                <option><%=prv.getNombreProducto() %></option>
                                <% }%>
                            </select>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Lacteos</label>
                          <div class="col-sm-9">
                             <select name="lacteo" class="form-control">
                                <option>-- SELECCIONE --</option>
                                <% ProductoVO prod=new ProductoVO();
                                    ProductoDAO proddao=new ProductoDAO(prod);
                                    ArrayList<ProductoVO>listacuatro=proddao.listarlacteos();
                                for (int i = 0; i < listacuatro.size(); i++) {
                                       prod=listacuatro.get(i);
                                %>
                                <option><%= prod.getNombreProducto() %></option>
                                <% }%>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Pescados</label>
                          <div class="col-sm-9">
                             <select name="pescado" class="form-control">
                                <option>-- SELECCIONE --</option>
                                    <% ProductoVO produno=new ProductoVO();
                                        ProductoDAO proddaouno=new ProductoDAO(produno);
                                        ArrayList<ProductoVO>listacinco=proddaouno.listarpescado();
                                    for (int i = 0; i < listacinco.size(); i++) {
                                        produno=listacinco.get(i);
                                    %>
                                    <option><%= produno.getNombreProducto() %></option>
                                    <% }%>
                            </select>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Cereales</label>
                          <div class="col-sm-9">
                            <select name="cereal" class="form-control">
                                <option>-- SELECCIONE --</option>
                                <% ProductoVO prodos=new ProductoVO();
                                    ProductoDAO proddaodos=new ProductoDAO(prodos);
                                    ArrayList<ProductoVO>listaseis=proddaodos.listarcereal();
                                for (int i = 0; i < listaseis.size(); i++) {
                                       prodos=listaseis.get(i);
                                %>
                                <option><%= prodos.getNombreProducto() %></option>
                                <% }%>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Embutidos</label>
                          <div class="col-sm-9">
                            <select name="embutido" class="form-control">
                                <option>-- SELECCIONE --</option>
                                <% ProductoVO protres=new ProductoVO();
                                    ProductoDAO prodaotres=new ProductoDAO(protres);
                                    ArrayList<ProductoVO>listasiete=prodaotres.listarembutidos();
                                for (int i = 0; i < listasiete.size(); i++) {
                                       protres=listasiete.get(i);
                                %>
                                <option><%= protres.getNombreProducto() %></option>
                                <% }%>
                            </select>
                          </div>
                        </div>
                      </div>
                    </div>
                        <button type="reset" class="btn btn-gradient-light btn-rounded btn-fw">Restablecer</button>
                        <input type="submit" class="btn btn-gradient-success btn-rounded btn-fw" value="Seleccionar menú"/>
                        <input type="hidden" name="opcion" value="1">
                  </form>
                            <% if(request.getAttribute("error")!=null){%>
                            ${error}
                        <%}else {%>
                            ${exito}
                        <%}%>
                </div>
              </div>
            </div>
            </div>
            <div class="row">
                <div class="main-panel">
                    <div class="col-lg-9 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <form class="form-sample" action="Menu" method="post">
                                    <table class="table table-hover">
                                        <thead>
                                          <tr>
                                            <th>Categoría</th>
                                            <th>Producto</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr>
                                            <td><label> VEGETALES </label></td>  
                                            <td><input id="menu" type="text" name="vegetalmenu" value="<%=request.getParameter("vegetal") %>" /></td>    
                                          </tr>
                                          <tr>
                                            <td><label> LEGUMBRES  </label></td>
                                            <td><input id="menu" type="text" name="legumbremenu" value="<%=request.getParameter("legumbre") %>" /></td>
                                          </tr>
                                          <tr>
                                            <td><label> FRUTAS </label></td>
                                            <td><input id="menu" type="text" name="frutamenu" value="<%=request.getParameter("fruta") %>" /></td>
                                          </tr>
                                          <tr>
                                            <td><label> CARNES  </label></td>
                                            <td><input id="menu" type="text" name="carnemenu" value="<%=request.getParameter("carne") %>" /></td>
                                          </tr>
                                          <tr>
                                            <td><label> LACTEOS </label></td>
                                            <td><input id="menu" type="text" name="lacteomenu" value="<%=request.getParameter("lacteo") %>" /></td>        
                                          </tr>
                                          <tr>
                                            <td><label> PESCADOS  </label></td>
                                            <td><input id="menu" type="text" name="pescadomenu" value="<%=request.getParameter("pescado") %>" /></td>
                                          </tr>
                                          <tr>
                                            <td><label> CEREALES </label></td>
                                            <td><input id="menu" type="text" name="cerealmenu" value="<%=request.getParameter("cereal") %>" /> </td>
                                          </tr>     
                                          <tr>
                                            <td><label> EMBUTIDOS  </label></td>
                                            <td><input id="menu" type="text" name="embutidomenu" value=" <%=request.getParameter("embutido")%>" />  </td>
                                          </tr>
                                        </tbody>
                                    </table>
                                    <button type="submit" class="btn btn-gradient-success btn-rounded btn-fw">Agregar menú</button>
                                    <input type="hidden" name="opcion" value="2">
                                    <% if(request.getAttribute("error")!=null){%>
                                        ${error}
                                    <%}else {%>
                                        ${exito}
                                    <%}%>
                                    
                                </form>      
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2018. Todos los derechos reservados.</span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <!-- End custom js for this page-->
</body>

</html>
