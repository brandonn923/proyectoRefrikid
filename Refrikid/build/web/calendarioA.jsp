                       <%-- 
    Document   : index.jsp
    Created on : 29/11/2018, 04:40:57 PM
    Author     : Papeleria Dacami
--%>

<html>
    <head>
        <title>Calendario</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/cssCalendario.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
        <!--CSS============================================= -->
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/nice-select.css">					
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/main.css">
        <meta content="text/html; charset=iso-8859-1" http-equiv=Content-Type>
        
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
          <a class="navbar-brand brand-logo" href="administrador.jsp"><img src="img/images/logo.svg" alt="logo"/></a>
          <a class="navbar-brand brand-logo-mini" href="administrador.jsp"><img src="img/images/logo-mini.svg" alt="logo"/></a>
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
                  <button class="dropdown-item">
                    <i class="mdi mdi-logout mr-2 text-primary"></i>
                    Cerrar Sesión
                    <input type="hidden" name="opcion" value="3">
                </button>
                </form>
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
              <span class="menu-title">Estandar Crecimiento</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-chart-line menu-icon"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                     <li class="nav-item"> <a class="nav-link" href="ninoslongitud0a5.jsp" target="_blank">Altura Niños 0 A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninaslongitudmax5.jsp" target="_blank">Altura Niños mayores A 5 </a></li>
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

            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="page-header">
                        <h3 class="page-title">
                            Calendario
                        </h3>
                    </div>
                    <div class="row">
                        <div class="col-md-12 grid-margin-md-0 ">
                            <div class="card">
                                <div class="card-body">
                                    <div class="calendar" id="calendar-app">
                                        <div class="calendar--day-view" id="day-view">
                                            <span class="day-view-exit" id="day-view-exit">&times;</span>
                                            <span class="day-view-date" id="day-view-date">MAYO 29 2016</span>
                                                <div class="day-view-content">
                                                    <div class="day-highlight">
                                                        You <span class="day-events" id="day-events">no tiene eventos en </span>. &nbsp; <span tabindex="0" onkeyup="if(event.keyCode != 13) return; this.click();" class="day-even ts-link" id="add-event" data-date>Añadir un nuevo evento</span>
                                                    </div>
                                                    <div class="day-add-event" id="add-day-event-box" data-active="false">
                                                        <div class="row">
                                                            <div class="half">
                                                                <label class="add-event-label">
                                                                    Nombre del evento
                                                                    <input type="text" class="add-event-edit add-event-edit--long" placeholder="Nuevo evento" id="input-add-event-name">
                                                                </label>
                                                            </div>
                                                            <div class="qtr">
                                                                <label class="add-event-label">
                                                                    Hora Inicio
                                                                    <input type="text" class="add-event-edit" placeholder="8:15" id="input-add-event-start-time" data-options="1,2,3,4,5,6,7,8,9,10,11,12" data-format="datetime">
                                                                    <input type="text" class="add-event-edit" placeholder="am" id="input-add-event-start-ampm" data-options="a,p,am,pm">
                                                                </label>
                                                            </div>
                                                            <div class="qtr">
                                                                <label class="add-event-label">
                                                                    Hora Fin
                                                                    <input type="text" class="add-event-edit" placeholder="9" id="input-add-event-end-time" data-options="1,2,3,4,5,6,7,8,9,10,11,12" data-format="datetime">
                                                                    <input type="text" class="add-event-edit" placeholder="am" id="input-add-event-end-ampm" data-options="a,p,am,pm">
                                                                </label>
                                                            </div>
                                                            <div class="half">
                                                                <a onkeyup="if(event.keyCode != 13) return; this.click();" tabindex="0" id="add-event-save" class="event-btn--save event-btn">Guardar</a>
                                                                <a tabindex="0" id="add-event-cancel" class="event-btn--cancel event-btn">Cancelar</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                <div id="day-events-list" class="day-events-list"></div>
                                                <div class="day-inspiration-quote" id="inspirational-quote"></div>
                                            </div>
                                        </div>
                                        <div class="calendar--view" id="calendar-view">
                                            <div class="cview__month">
                                                <span class="cview__month-last" id="calendar-month-last"><a>Abril</a></span>
                                                <span class="cview__month-current" id="calendar-month">Mayo</span>
                                                <span class="cview__month-next" id="calendar-month-next">Junio</span>
                                            </div>
                                            <div class="cview__header">Domingo</div>
                                            <div class="cview__header">Lunes</div>
                                            <div class="cview__header">Martes</div>
                                            <div class="cview__header">Miércoles</div>
                                            <div class="cview__header">Jueves</div>
                                            <div class="cview__header">Viernes</div>
                                            <div class="cview__header">Sábado</div>
                                            <div class="calendar--view" id="dates"></div>
                                        </div>
                                        <div class="footer1">
                                            <br><span><span id="footer-date" class="footer__link">Hoy es Mayo 30</span></span>    
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    
        
        <script src="js/jquery.3.3.1.min.js"></script>
        <script src="js/script.js"></script>
        <script src="js/calendario.js"></script>
        <script src="vendors/js/vendor.bundle.base.js"></script>
        <script src="vendors/js/vendor.bundle.addons.js"></script>
        <script src="js/off-canvas.js"></script>
        <script src="js/misc.js"></script>
        <script src="js/dashboard.js"></script>        
    </body>
</html>