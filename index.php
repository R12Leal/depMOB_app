<?php include('includes/ord_tra.php'); ?>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->
    <title>depMOB_app</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="assets/admin_template/css/templatemo_main.css">
    <link rel="stylesheet" href="assets/js/css/alertify.min.css" />
    <link rel="stylesheet" href="assets/js/css/themes/default.min.css" />
    <script src="assets/js/alertify.min.js"></script>
    <?php echo Xcrud::load_css(); ?>
</head>
<body>
  <div id="main-wrapper">
    <div class="navbar navbar-inverse" role="navigation">
      <div class="navbar-header">
        <div class="logo"><h1>depMOB_app</h1></div>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
    </div>
    <div class="template-page-wrapper">
      <div class="navbar-collapse collapse templatemo-sidebar">
        <ul class="templatemo-sidebar-menu">
          <li>
          </li>
          <li><a href="index.html"><i class="fa fa-home"></i>Panel</a></li>
          <li class="active"><a href="#"><i class="fa fa-list-alt"></i>Lista de Órdenes</a></li>
          <li><a href="maps.html"><i class="fa fa-list-alt"></i>Lista de Trabajos</a></li>
        </ul>
      </div><!--/.navbar-collapse -->
      <div class="templatemo-content-wrapper">
        <div class="templatemo-content">
          <ol class="breadcrumb">
            <li><a href="index.html">Panel</a></li>
            <li class="active">Lista de Órdenes</li>
          </ol>
          <div class="templatemo-charts">
            <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <?php echo $xcrud->render(); ?>
                <div class="panel panel-info">
                  <div class="panel-heading">Example DATA A</div>
                </div>
                <div class="row templatemo-chart-row">

                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 col-sm-6">
                <div class="panel panel-success">
                  <div class="panel-heading">Example DATA 1</div>
                  <canvas id="templatemo-bar-chart"></canvas>
                </div>
              </div>
              <div class="col-md-6 col-sm-6">
                <div class="panel panel-primary">
                  <div class="panel-heading">Example DATA 2</div>
                  <canvas id="templatemo-bar-chart"></canvas>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 col-sm-6">
                <div class="panel panel-success">
                  <div class="panel-heading">Example DATA 3</div>
                  <canvas id="templatemo-line-chart"></canvas>
                </div>
              </div>
              <div class="col-md-6 col-sm-6">
                <div class="panel panel-primary">
                  <div class="panel-heading">Example DATA 4</div>
                  <canvas id="templatemo-bar-chart"></canvas>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <footer class="templatemo-footer">
        <div class="templatemo-copyright">
          <p>Copyright &copy; 2084 depMOB_app</p>
        </div>
      </footer>
    </div>
    </div>
    <script src="assets/admin_template/js/jquery.min.js"></script>
    <script src="assets/admin_template/js/bootstrap.min.js"></script>
    <script src="assets/admin_template/js/Chart.min.js"></script>
    <script src="assets/admin_template/js/templatemo_script.js"></script>
    <?php echo Xcrud::load_js(); ?>
  </body>
</html>
