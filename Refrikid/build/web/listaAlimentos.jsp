
        
<%@page import="java.util.ArrayList"%>
<%@page import="VO.ProductoVO"%>
<%@page import="DAO.ProductoDAO"%>
<%@page import="VO.ProductoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Usuario</title>
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
        <a class="navbar-brand brand-logo" href="usuario.jsp"><img src="img/images/logo.svg" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="usuario.jsp"><img src="img/images/logo-mini.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <div class="search-field d-none d-md-block">
          
        </div>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <div class="nav-profile-img">
                <img src="img/images/faces/face1.svg" alt="image">
                <span class="availability-status online"></span>             
              </div>
              <div class="nav-profile-text">
                <p class="mb-1 text-black">Usuario</p>
              </div>
            </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="ingresar.jsp">
                <i class="mdi mdi-logout mr-2 text-primary"></i>
                Cerrar Sesión
              </a>
            </div>
          </li>
          <li class="nav-item nav-settings d-none d-lg-block">
            <a class="nav-link" href="#">
              <i class="mdi mdi-format-line-spacing"></i>
            </a>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
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
                <span class="font-weight-bold mb-2">Usuario</span>
                <span class="text-secondary text-small">Padre y/o Acudiente</span>
              </div>
              <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="usuario.jsp">
              <span class="menu-title">Inicio</span>
              <i class="mdi mdi-home menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="registroHistorial.jsp">
              <span class="menu-title">Datos de Crecimiento</span>
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
                    <li class="nav-item"> <a class="nav-link" href="ninaslongitud0a5.jsp" target="_blank">Altura Niñas 0 A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninaslongitudmax5.jsp" target="_blank">Altura Niñas Mayores A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninaspeso0a5.jsp" target="_blank">Peso Niñas 0 A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="#" target="_blank">Peso Niñas Mayores A 5 </a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="listaAlimentos.jsp">
              <span class="menu-title">Lista de Alimentos</span>
              <i class="mdi mdi-menu menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="reporte.jsp">
              <span class="menu-title">Reportes</span>
              <i class="mdi mdi-chart-bar menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="calendarioU.jsp">
              <span class="menu-title">Buscar Menú</span>
              <i class="mdi mdi-calendar-blank menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
               <a class="nav-link" href="sugerencia.jsp">
              <span class="menu-title">Sugerencia Nutricional</span>
              <i class="mdi mdi-message-text menu-icon"></i>
            </a>
          </li>
        </ul>
      </nav>
      
       <div class="main-panel">        
        <div class="content-wrapper">
          <div class="page-header">
            <h3 class="page-title">
              Lista Alimentos
            </h3>
          </div>
          <div class="row">
            <%   
                ProductoVO productovo=new ProductoVO();
                ProductoDAO productodao=new ProductoDAO(productovo);
            %>
             <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Vegetales/Hortalizas</h4>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <td>Idproducto</td>
                        <td>NombreProducto</td>
                        <td>Calorias</td>
                        <td>Hidratos</td>
                        <td>Grasas</td>
                        <td>Proteinas</td>
                      </tr>
                      <% ArrayList<ProductoVO>lista=productodao.listarvegetales();
                        for (int i = 0; i < lista.size(); i++) {
                        productovo=lista.get(i);
                      %>
                    </thead>
                    <tbody>
                      <tr>
                        <td><%= productovo.getIdproducto() %></td>
                        <td><%= productovo.getNombreProducto() %></td>
                        <td><%= productovo.getCalorias() %></td>
                        <td><%= productovo.getHidratos()%></td>
                        <td><%= productovo.getGrasas() %></td>
                        <td><%= productovo.getProteinas() %></td>
                      </tr>
                      <% }%>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Legumbres</h4>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <td>Idproducto</td>
                        <td>NombreProducto</td>
                        <td>Calorias</td>
                        <td>Hidratos</td>
                        <td>Grasas</td>
                        <td>Proteinas</td>
                      </tr>
                      <% ProductoVO vo=new ProductoVO();
                        ProductoDAO dao=new ProductoDAO(vo);
                        ArrayList<ProductoVO>listauno=dao.listarlegumbres();
                      for (int i = 0; i < listauno.size(); i++) {
                        vo=listauno.get(i);
                      %>
                    </thead>
                    <tbody>
                      <tr>
                        <td><%= vo.getIdproducto() %></td>
                         <td><%= vo.getNombreProducto() %></td>
                          <td><%= vo.getCalorias() %></td>
                           <td><%= vo.getHidratos()%></td>
                            <td><%= vo.getGrasas() %></td>
                             <td><%= vo.getProteinas() %></td>
                      </tr>
                      <% }%>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Frutas</h4>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <td>Idproducto</td>
                        <td>NombreProducto</td>
                        <td>Calorias</td>
                        <td>Hidratos</td>
                        <td>Grasas</td>
                        <td>Proteinas</td>
                      </tr>
                      <% ProductoVO pvo=new ProductoVO();
                        ProductoDAO pdao=new ProductoDAO(pvo);
                        ArrayList<ProductoVO>listados=pdao.listarfrutas();
                      for (int i = 0; i < listados.size(); i++) {
                        pvo=listados.get(i);
                      %>
                    </thead>
                    <tbody>
                      <tr>
                        <td><%= pvo.getIdproducto() %></td>
                        <td><%= pvo.getNombreProducto() %></td>
                        <td><%= pvo.getCalorias() %></td>
                        <td><%= pvo.getHidratos()%></td>
                        <td><%= pvo.getGrasas() %></td>
                        <td><%= pvo.getProteinas() %></td>
                      </tr>
                      <% }%>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Carnes</h4>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <td>Idproducto</td>
                        <td>NombreProducto</td>
                        <td>Calorias</td>
                        <td>Hidratos</td>
                        <td>Grasas</td>
                        <td>Proteinas</td>
                      </tr>
                      <% ProductoVO prv=new ProductoVO();
                        ProductoDAO pda=new ProductoDAO(prv);
                        ArrayList<ProductoVO>listatres=pda.listarcarnes();
                      for (int i = 0; i < listatres.size(); i++) {
                        prv=listatres.get(i);
                      %>
                    </thead>
                    <tbody>
                      <tr>
                        <td><%= prv.getIdproducto() %></td>
                        <td><%= prv.getNombreProducto() %></td>
                        <td><%= prv.getCalorias() %></td>
                        <td><%= prv.getHidratos()%></td>
                        <td><%= prv.getGrasas() %></td>
                        <td><%= prv.getProteinas() %></td>
                      </tr>
                      <% }%>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Lacteos y Derivados</h4>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <td>Idproducto</td>
                        <td>NombreProducto</td>
                        <td>Calorias</td>
                        <td>Hidratos</td>
                        <td>Grasas</td>
                        <td>Proteinas</td>
                      </tr>
                      <% ProductoVO prod=new ProductoVO();
                        ProductoDAO proddao=new ProductoDAO(prod);
                        ArrayList<ProductoVO>listacuatro=proddao.listarlacteos();
                      for (int i = 0; i < listacuatro.size(); i++) {
                        prod=listacuatro.get(i);
                       %>
                    </thead>
                    <tbody>
                      <tr>
                        <td><%= prod.getIdproducto() %></td>
                        <td><%= prod.getNombreProducto() %></td>
                        <td><%= prod.getCalorias() %></td>
                        <td><%= prod.getHidratos()%></td>
                        <td><%= prod.getGrasas() %></td>
                        <td><%= prod.getProteinas() %></td>
                      </tr>
                      <% }%>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Pescados</h4>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <td>Idproducto</td>
                        <td>NombreProducto</td>
                        <td>Calorias</td>
                        <td>Hidratos</td>
                        <td>Grasas</td>
                        <td>Proteinas</td>
                      </tr>
                       <% ProductoVO produno=new ProductoVO();
                        ProductoDAO proddaouno=new ProductoDAO(produno);
                        ArrayList<ProductoVO>listacinco=proddaouno.listarpescado();
                      for (int i = 0; i < listacinco.size(); i++) {
                        produno=listacinco.get(i);
                      %>
                    </thead>
                    <tbody>
                      <tr>
                        <td><%= produno.getIdproducto() %></td>
                        <td><%= produno.getNombreProducto() %></td>
                        <td><%= produno.getCalorias() %></td>
                        <td><%= produno.getHidratos()%></td>
                        <td><%= produno.getGrasas() %></td>
                        <td><%= produno.getProteinas() %></td>
                      </tr>
                      <% }%>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Cereales</h4>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <td>Idproducto</td>
                        <td>NombreProducto</td>
                        <td>Calorias</td>
                        <td>Hidratos</td>
                        <td>Grasas</td>
                        <td>Proteinas</td>
                      </tr>
                      <% ProductoVO prodos=new ProductoVO();
                        ProductoDAO proddaodos=new ProductoDAO(prodos);
                        ArrayList<ProductoVO>listaseis=proddaodos.listarcereal();
                      for (int i = 0; i < listaseis.size(); i++) {
                        prodos=listaseis.get(i);
                      %>
                    </thead>
                    <tbody>
                      <tr>
                        <td><%= prodos.getIdproducto() %></td>
                        <td><%= prodos.getNombreProducto() %></td>
                        <td><%= prodos.getCalorias() %></td>
                        <td><%= prodos.getHidratos()%></td>
                        <td><%= prodos.getGrasas() %></td>
                        <td><%= prodos.getProteinas() %></td>
                      </tr>
                      <% }%>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>     
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Embutidos</h4>
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <td>Idproducto</td>
                        <td>NombreProducto</td>
                        <td>Calorias</td>
                        <td>Hidratos</td>
                        <td>Grasas</td>
                        <td>Proteinas</td>
                      </tr>
                      <% ProductoVO protres=new ProductoVO();
                        ProductoDAO prodaotres=new ProductoDAO(protres);
                        ArrayList<ProductoVO>listasiete=prodaotres.listarembutidos();
                      for (int i = 0; i < listasiete.size(); i++) {
                        protres=listasiete.get(i);
                      %>
                    </thead>
                    <tbody>
                      <tr>
                        <td><%= protres.getIdproducto() %></td>
                        <td><%= protres.getNombreProducto() %></td>
                        <td><%= protres.getCalorias() %></td>
                        <td><%= protres.getHidratos()%></td>
                        <td><%= protres.getGrasas() %></td>
                        <td><%= protres.getProteinas() %></td>
                      </tr>
                      <% }%>
                    </tbody>
                  </table>
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

 
      
      
      