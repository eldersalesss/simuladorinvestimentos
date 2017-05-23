<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/Chart.min.js"></script>



    <link href="assets/materialize/css/materialize.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="assets/uikit/css/uikit.min.css" rel="stylesheet">

    <title>Fidape Investimentos</title>
    <!-- Bootstrap core CSS -->

    <link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="assets/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<section id="inicio">
    <div id="sticky-menu" style="display: none" class="menu-sticky" uk-sticky="animation: uk-animation-fade">
        <div>
            <div class="container-fluid">
                <div class="navbar-header navbar-moveright">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand brand-text" href="#" uk-scroll style="color:white">fidape</a>
                </div>
                <div id="navbar-links">
                    <ul class="nav navbar-nav pull-right">
                        <li class="navbar-link">
                            <a class="inve-link menu" href="#primeiro-divisor" uk-scroll="duration:1500">Investimentos</a>
                        </li>
                        <li class="navbar-link">
                            <a class="taxa-link menu" href="#segundo-divisor" uk-scroll="duration:1500">Taxas</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="div-tamanhoimage uk-background-cover" style="background-image: url(assets/images/item-bg.jpg)">
        <div class="container container-remove ">
            <div class="row">
                <nav class="navbar navbar-default navbar-remove " role="navigation">
                    <div class="container-fluid navbar-move">
                        <div class="navbar-header navbar-moveright">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand brand-text" href="#">fidape</a>
                        </div>
                        <div id="navbar-links" class="navbar-moveleft">
                            <ul class="nav navbar-nav pull-right">
                                <li class="navbar-link">
                                    <a class="inv-link" href="#primeiro-divisor" uk-scroll="duration:1500">Investimentos</a>
                                </li>
                                <li class="navbar-link">
                                    <a class="taxa-link" href="#segundo-divisor" uk-scroll="duration:1500">Taxas</a>
                                </li>
                                <li class="navbar-link">
                                    <a class="sobre-link" href="#">Sobre</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <div class="container" id="grandes-possibilidades">
            <div class="row">
                <div class="inicio-espaco">
                    <h3 class="text-center inicio-text">Grandes Possibilidades</h3>
                    <p class="text-center inicio-p-text">Analise a melhor opção para você</p>
                </div>
            </div>
            <a href="#terceiro-divisor" uk-scroll="duration:1500">
                <button class="btn btn-default btn-lg waves-effect" type="button" id="btn-simular">Simular</button>
            </a>
        </div>
    </div>
</section>

<nav class="divisor " id="primeiro-divisor">
    <div class="uk-divider-icon divisor">
    </div>
</nav>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="assets/js/ie10-viewport-bug-workaround.js"></script>
<script src="assets/uikit/js/uikit.min.js"></script>
<script src="assets/uikit/js/uikit-icons.min.js"></script>
<script src="assets/materialize/js/materialize.min.js"></script>
<script src="assets/js/javascript.js"></script>

</body>
</html>
