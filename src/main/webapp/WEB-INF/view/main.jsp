<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-br">
<head>

    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/Chart.min.js"></script>
    <script src="assets/materialize/js/materialize.js"></script>


    <link href="assets/materialize/css/materialize.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="assets/uikit/css/uikit.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/font-awesome.min.css">
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
    <div id="sticky-menu" style="display: none" class="uk-light menu-sticky" >
        <div>
            <div class="container-fluid">
                <div class="navbar-header navbar-moveright">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand brand-text" href="#" uk-scroll style="color:black">fidape</a>
                    <div class="link-menu">
                    <a class="link-menu2 inve-link menu" uk-scroll href="#primeiro-divisor" style="color: black">Investimentos</a>
                        
                    <a class="link-menu2 taxa-link menu" uk-scroll href="#segundo-divisor" style="color: black">Taxas</a>
                    </div>
                </div>
                
                    
                            
                       
                
            </div>
        </div>
    </div>
    <div class="div-tamanhoimage uk-background-cover" style="background-image: url(assets/images/main-image2.jpg)">
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
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <div class="container" id="grandes-possibilidades">
            <div class="row">
                <div class="inicio-espaco">
                    <h3 class="text-center inicio-text">Grandes Posibilidades</h3>
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

<section id="taxas">
    <nav class="uk-background-muted">
        <div class="container">
            
            <div class="row" id="row-investimento">
             
                <div class="col-md-4 text-center col-md-offset-4" id="colum-investimento" uk-scrollspy="cls:uk-animation-fade">
                    <div id="inv-confira">
                        <i class="material-icons md-96">trending_up</i>
                        <h3>Investimentos</h3>
                        <p>Confira como funciona cada investimento e saiba qual é o ideal para sua escolha.</p>
                        
                        
                        

                    </div>
                </div>



                
            </div>
            <center> 
                <div style="width: 80%" class="uk-inline uk-visible-toggle ">
            
            <label id="previous-left" class="uk-position-center-left uk-position-small uk-hidden-hover uk-slidenav-large" href="#" uk-slidenav-previous></label>
            <label id="next-right" class="uk-position-center-right uk-position-small uk-hidden-hover uk-slidenav-large" href="#" uk-slidenav-next></label>
        
                
<div style="width: 700" class="carousel carousel-slider center validate text-center tooltipped" data-indicators="true" data-position="top" data-delay="50" data-tooltip="Arraste para os lados">
    
                            <div class="carousel-fixed-item center">
                              <a href="#terceiro-divisor" uk-scroll="duration:1500" class="btn waves-effect white black-text darken-text-2">Simule</a>
                            </div>
                            <div class="carousel-item   " href="#one!">
                              <div id="tesouro-div">
                                <center>  <h2>  Tesouro Direto  </h3>  </center>
                                <center>  <h4> <font color="green"> Como Funciona ? </font>  </h2>  </center> <br>
                                <p align="justify">  É considerada uma opção de investimento de baixo custo e que oferece rentabilidade superior à Poupança, sendo a aplicação de menor risco do mercado e ideal para quem quer começar a investir seu dinheiro. </p>
                                <br>
                                <p> <font color="gray"> <b> Clique abaixo para simular </b> </font> </p>
                               
                                <br>
                              </div>
                            </div>
                            <div class="carousel-item " href="#two!">
                              <div id="cdb-div">
                                    <center>  <h2>  CDB e LC  </h3>  </center>
                                    <center>  <h4> <font color="green"> Como Funciona ? </font>  </h2>  </center> <br>

                                    <p align="justify"> São investimentos que estão entre os mais rentáveis em renda fixa, que dão ao investidor a opção de saber exatamente quanto seu dinheiro vai render ou optar por acompanhar as taxas de juros do mercado. </p>

                                    <br>
                                    <p> <font color="gray"> <b> Clique abaixo para simular </b> </font> </p>
                                    
                                    <br>
                               </div>
                            </div>
                            <div class="carousel-item" href="#three!">
                              <div id="lci-div">


                                    <center> <h2>  LCI e LCA </h3>  </center>
                                    <center>  <h4> <font color="green"> Como Funciona ? </font>  </h2>  </center> <br>

                                    <p align="justify"> São dois tipos de investimentos em renda fixa de curto prazo e isentos de Imposto de Renda, que dão ao investidor a opção de saber exatamente quanto seu dinheiro vai render ou optar por acompanhar as taxas de juros do mercado. </p>

                                    <br>
                                    <p> <font color="gray"> <b> Clique abaixo para simular </b> </font> </p>
                                    


                                </div>
                            </div>
                           
                        </div>
        
                        <script>
                            $('.carousel.carousel-slider').carousel({fullWidth: true});
                        </script>
        </div>
              
        </div>
</center>
    </nav>
    <nav id="segundo-divisor" class="divisor">
        <div class="uk-divider-icon divisor">
        </div>
    </nav>
    <nav id="nav-taxa" class="uk-background-muted">
        
    </nav>
</section>
<nav id="terceiro-divisor" class="divisor">
    <div class="uk-divider-icon divisor">
    </div>
</nav>
<section id="simulador">
    <div class="container" id="back-container">
        <div class="container" id="simular-container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4 text-center">
                    <i class="material-icons md-96" id="chart-simular">show_chart</i>
                    <h3>Simule</h3>
                </div>
                <div class="col-md-9 col-md-offset-1">
                    <div class="uk-child-width-1-2@s" uk-grid>
                        <div class="tab-colum-edit">
                            <div uk-grid>
                                <div class="uk-width-auto@m">
                                    <ul class="uk-tab-left" uk-tab="connect: #component-tab-left; animation: uk-animation-fade,uk-animation-slide-right, uk-animation-slide-left">
                                        <li onclick="clear()">
                                            <a href="#">Tesouro Direto</a>
                                        </li>
                                        <li onclick="clear()">
                                            <a href="#">LCI LCA</a>
                                        </li>
                                        <li>
                                            <a href="#">CDB LC</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="uk-width-expand@m">
                                    <ul id="component-tab-left" class="uk-switcher">
                                        <li>
                                            <div class="table-taxa tab-div-edit">
                                                <div class="row">
                                                    <div class="text-center col-md-offset-1 col-md-10">
                                                        <form id="formA" class="form-size" method="POST">
                                                            <input hidden name="classe" value="TesouroDireto"/>
                                                            <h3>
                                                                Valor</h3>
                                                            <div class=" col-md-offset-1 col-md-10 espaco-bottom">
                                                                <div class="input-field col  centralizar-form">
                                                                    <i class="material-icons corrigir-icon prefix">attach_money</i>
                                                                    <input name="valor" id="dinheiro-investido" class="validate text-center tooltipped" data-position="bottom" data-delay="35" data-tooltip="Nota: Reais  -  Valor fixo sem pontuações." type="number">
                                                                    <label for="dinheiro-investido">Dinheiro</label>
                                                                </div>
                                                                <div class="corrigir-00">
                                                                    ,00
                                                                </div>
                                                            </div>
                                                            <h3>
                                                                Tempo</h3>
                                                            <div uk-switcher="animation: uk-animation-fade">

                                                                <button class="uk-button uk-button-default btn-switcher" type="button">Meses</button>
                                                                <button class="uk-button uk-button-default btn-switcher" type="button">Anos</button>
                                                            </div>
                                                            <div class="uk-margin uk-switcher espaco-bottom">
                                                                <li>
                                                                    <div id="range-mes" class="posicao-range">
                                                                        <p class="range-field range-p"><input name="tempoMes" type="range" id="range-tempo" min="1" max="12" /></p>
                                                                    </div>
                                                                </li>
                                                                <li class="espaco-li espaco-bottom">
                                                                    <div class=" espaco-bottom col-md-5 col-md-offset-4">
                                                                        <div class="input-field col  espaco-divtempo">
                                                                            <i class="material-icons corrigir-icon prefix">access_time</i>
                                                                            <input value="0" name="tempoAno" id="tempo-investido" class="validate text-center tooltipped" data-position="bottom" data-delay="50" data-tooltip="Quantidade de anos" type="number"/>
                                                                            <label for="tempo-investido">Anos</label>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </div>
                                                            <div class="corrigi-divinv espaco-bottom">
                                                                <h3>
                                                                    Investimento</h3>
                                                                <div class="posicao-select">
                                                                    <div class="hide-seta">
                                                                    </div>
                                                                    <select name="tipo" id="tipo-investimento">
                                                                        <option value="" disabled selected>Selecione o investimento</option>
                                                                        <option value="selic">Selic</option>
                                                                        <option value="ipca">IPCA</option>
                                                                        <option value="prefixado">Prefixado</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div id="check-mensal" class="uk-margin posicao-mensal">
                                                                <h3>
                                                                    Mensal</h3>
                                                                <fieldset class="check-mensal-size">
                                                                    <input hidden id="mensal" name="mensal" value="false"/>
                                                                    <input id="check" type="checkbox" />
                                                                    <label for="check" class="posicao-checkmensal tooltipped" data-position="bottom" data-delay="50" data-tooltip="Depósito do valor investido mensalmente - Deposito fixo caso não selecionado"></label>
                                                                </fieldset>
                                                            </div>
                                                            <div class="col-md-6 col-md-offset-3">




                                                                    <button id="simular1" class="uk-button uk-button-text form-button" type="submit">

                                                                        <i class="material-icons">check</i>
                                                                        Simular
                                                                    </button>


                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="table-taxa tab-div-edit">
                                                <div class="row">
                                                    <div class="text-center col-md-offset-1 col-md-10">
                                                        <form id="formB" class="form-size">
                                                            <input hidden name="classe" value="LCIeLCA"/>
                                                            <input hidden id="mensal" name="mensal" value="false"/>
                                                            <h3>
                                                                Valor</h3>
                                                            <div class=" col-md-offset-1 col-md-10 espaco-bottom">
                                                                <div class="input-field col  centralizar-form">
                                                                    <i class="material-icons corrigir-icon prefix">attach_money</i>
                                                                    <input name="valor" id="dinheiro-investido2" class="validate text-center tooltipped" data-position="bottom" data-delay="35" data-tooltip="Nota: Reais  -  Valor fixo sem pontuações." type="number">
                                                                    <label for="dinheiro-investido2">Dinheiro</label>
                                                                </div>
                                                                <div class="corrigir-00">
                                                                    ,00
                                                                </div>
                                                            </div>
                                                            <h3>
                                                                Tempo</h3>
                                                            <div uk-switcher="animation: uk-animation-fade">

                                                                <button class="uk-button uk-button-default btn-switcher" type="button">Meses</button>
                                                                <button class="uk-button uk-button-default btn-switcher" type="button">Anos</button>
                                                            </div>
                                                            <div class="uk-margin uk-switcher espaco-bottom">
                                                                <li>
                                                                    <div id="range-mes" class="posicao-range">
                                                                        <p class="range-field range-p"><input name="tempoMes" type="range" id="range-tempo" min="1" max="12" /></p>
                                                                    </div>
                                                                </li>
                                                                <li class="espaco-li espaco-bottom">
                                                                    <div class=" espaco-bottom col-md-5 col-md-offset-4">
                                                                        <div class="input-field col  espaco-divtempo">
                                                                            <i class="material-icons corrigir-icon prefix">access_time</i>
                                                                            <input value="0" name="tempoAno" id="tempo-investimento2" class="validate text-center tooltipped" data-position="bottom" data-delay="50" data-tooltip="Quantidade de anos" type="number">
                                                                            <label for="tempo-investimento2">Anos</label>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </div>
                                                            <div class="corrigi-divinv espaco-bottom">
                                                                <h3>
                                                                    Investimento</h3>
                                                                <div class="posicao-select">
                                                                    <div class="hide-seta">
                                                                    </div>
                                                                    <select name="tipo" id="tipo-investimento">
                                                                        <option value="" disabled selected>Selecione o investimento</option>
                                                                        <option value="lci">LCI</option>
                                                                        <option value="lca">LCA</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-md-offset-3">
                                                                <button id="simular2" class="uk-button uk-button-text form-button" type="submit">
                                                                    <i class="material-icons">check</i>
                                                                    Simular
                                                                </button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>

                                            <div class="table-taxa tab-div-edit">
                                                <div class="row">
                                                    <div class="text-center col-md-offset-1 col-md-10">
                                                        <form id="formC" class="form-size">
                                                            <input hidden name="classe" value="CDBeLC"/>
                                                            <input hidden id="mensal" name="mensal" value="false"/>
                                                            <h3>
                                                                Valor</h3>
                                                            <div class=" col-md-offset-1 col-md-10 espaco-bottom">
                                                                <div class="input-field col  centralizar-form">
                                                                    <i class="material-icons corrigir-icon prefix">attach_money</i>
                                                                    <input name="valor" id="dinheiro-investido3" class="validate text-center tooltipped" data-position="bottom" data-delay="35" data-tooltip="Nota: Reais  -  Valor fixo sem pontuações." type="number">
                                                                    <label for="dinheiro-investido3">Dinheiro</label>
                                                                </div>
                                                                <div class="corrigir-00">
                                                                    ,00
                                                                </div>
                                                            </div>
                                                            <h3>
                                                                Tempo</h3>
                                                            <div uk-switcher="animation: uk-animation-fade">

                                                                <button class="uk-button uk-button-default btn-switcher" type="button">Meses</button>
                                                                <button class="uk-button uk-button-default btn-switcher" type="button">Anos</button>
                                                            </div>
                                                            <div class="uk-margin uk-switcher espaco-bottom">
                                                                <li>
                                                                    <div id="range-mes" class="posicao-range">
                                                                        <p class="range-field range-p"><input name="tempoMes" type="range" id="range-tempo" min="1" max="12" /></p>
                                                                    </div>
                                                                </li>
                                                                <li class="espaco-li espaco-bottom">
                                                                    <div class=" espaco-bottom col-md-5 col-md-offset-4">
                                                                        <div class="input-field col  espaco-divtempo">
                                                                            <i class="material-icons corrigir-icon prefix">access_time</i>
                                                                            <input value="0" name="tempoAno" id="tempo-investimento3" class="validate text-center tooltipped" data-position="bottom" data-delay="50" data-tooltip="Quantidade de anos" type="number">
                                                                            <label for="tempo-investimento3">Anos</label>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </div>
                                                            <div class="corrigi-divinv espaco-bottom">
                                                                <h3>
                                                                    Investimento</h3>
                                                                <div class="posicao-select">
                                                                    <div class="hide-seta">
                                                                    </div>
                                                                    <select name="tipo" id="tipo-investimento">
                                                                        <option value="" disabled selected>Selecione o investimento</option>
                                                                        <option value="cdb">CDB</option>
                                                                        <option value="lc">LC</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6 col-md-offset-3">
                                                                <button id="simular3" class="uk-button uk-button-text form-button" type="submit">
                                                                    <i class="material-icons">check</i>
                                                                    Simular
                                                                </button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="load">
    <jsp:include page="load.jsp"></jsp:include>
</section>
<section id="resultado" class="uk-background-secondary">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center">
                <i class="material-icons md-96 edit-resultado">done_all</i>
            </div>
            <div class="col-md-6 col-md-offset-3 text-center">
                <h3 class="edit-resultado">Resultado</h3>
            </div>
        </div>
        <div class="row" id="espaco">
        </div>
        <div id="resultadoValor"><div id="resultValor" style="color:white;font-size: 35px;"></div></div>
        <div class="row">
            <div class="col-md-8">
                <ul class="collapsible" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header active">
                            <i class="material-icons">show_chart</i>Grafico Ganho Mensal
                        </div>
                        <div class="collapsible-body back-colaps">
                            <span id="chart-draw">
                                <div id="chart-drawed"></div>
                            </span>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col-md-4">
                <div >
                    <ul class="collapsible text-center" data-collapsible="accordion">
                        <li>
                            <div class="collapsible-header active">
                                <i class="material-icons">view_list</i>Tabela Ganho
                            </div>
                            <div class="collapsible-body back-colaps">
                                <div id="table-normal">
                                    <table id="table1"></table>
                                </div>
                                <tfoot>
                                Detalhes
                                <br />
                                <a id="detalhes" uk-toggle="target: #modal-close"><i class="material-icons font-black">visibility</i></a>
                                </tfoot>
                                <div id="modal-close" uk-modal="center: true">
                                    <div class="uk-modal-dialog">
                                        <button class="uk-modal-close-default" type="button" uk-close></button>
                                        <div class="uk-modal-header">
                                            <h2 class="uk-modal-title">Tabela Detalhada</h2>
                                        </div>
                                        <div id="table-detalhada" class="uk-modal-body">
                                            <table id="table2"></table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-8" style="height: 50px">

            </div>
        </div>
        <div class="row row-distancetop">
            <div class="col-md-6 col-md-offset-5">
                <a id="re-simular" href="#terceiro-divisor" uk-scroll>
                    <button id="other-simu" class="uk-button btn-againformat">
                        Outra Simulação
                    </button>
                </a>
            </div>
            <a href="#" uk-totop uk-scroll class="btn-topo"> Topo</a>
        </div>
    </div>
</section>
<nav class="divisor ">
    <div class="uk-divider-icon divisor">
    </div>
</nav>



 <footer class="page-footer uk-background-secondary">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text" style="font-size:20px">Fidape Investimentos</h5>
                <p class="grey-text text-lighten-4">Um projeto do curso Ciência da Computação destinado a disciplina Engenharia de Software, como
                prática do framework Scrum objetivando obter aos membros experiências de trabalho em equipe.</p>
              </div>
              <div class="col l4 offset-l2 s12">
                  <form id="form-adm" style="color: white">
                    <h5 class="white-text">Área administrativa</h5>
                    <div class="input-field">
                        <input id="user" type="text" class="validate">
                        <label for="last_name">User</label>
                    </div>
                    <div class="input-field">
                        <input id="password" type="password" class="validate">
                        <label for="password">Password</label>
                    </div>
                    <input style="color:black" value="Sign In" id="sub-adm" uk-toggle="target: #modal-adm" type="submit" class="uk-button btn-adm"/>
                  </form>
                 
                  
                  <div id="modal-adm" uk-modal="center: true">
                      
                        <div id="adm-mod" class="uk-modal-dialog">
                            <button class="uk-modal-close-default" type="button" uk-close></button>
                            <div class="uk-modal-header">
                                <h2 class="uk-modal-title">Carregando</h2>
                            </div>
                            <div class="uk-modal-body">
                                <table id="table2"></table>
                            </div>
                        </div>
                  
                   </div>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
                
            <a class="grey-text text-lighten-4 right" href="https://github.com/eldersalesss/simuladorinvestimentos/tree/v-final">
                                <img class="icon icons8-GitHub" width="48" height="48" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAFFUlEQVR4Xu2aX1IaQRDGRX2PniB4gmCpz8ETqCcQTiCeQDxB8ATiCSInkDyrBTlB8ASBd//k+6jZ1LIy0927A1LCVqUqsjPT07/5uuffltaW/Cktuf9rKwArBSw5gVUILLkAVklwLiHQ6/W2Xl5ejt7e3iqlUqkC1ZXdv7QAB/hjgPddlBtsbGx0dnd3h7NW6MwAOKdP4UzNOW32BXX7qNsGjJtZwYgOAI6Xn5+fz9DxGjzeMns9vcIQMNqbm5tXAEGlRHuiAnh8fLxARxsRHc86OgTY1t7e3mUsAlEAYNQrGPXrvFK3OsPQgBpOYqihMACMeg0d+jHDUffxYYKs7+/v31oBpssXAuCcvy7SgaJ1obo6QqKdt53cABbB+cTpIhByAVgk51Mjf5InHMwAmPCwqLn7gJiXVD7EegF50TZNmgHc39/3fNkeyfDw4OCg62aFY5TjlPhF6rnwfoR2W8j6t3CuD/tVtMsBePdwdoD9XYs9EwAYb8L4hcfACBKcWPhwNYjpsZGpQ4f6bAO/j5e6+Htcz4H9Dwy/X8LxVnYV+PDw8OZzknUAoamFoAbAFR6k3/NJH4Z/wXB1mmFXtwKJ9iWJaspiILqA9d3jpCkU1ABAvQWDZwHyXgDa0dCWEwBQUWoVqAC4jc2fUOILKUDrmLacBADtUAU7mg2UCgCmvYZb7YX6OEQO2NY6UaQc1Pg3NBgun6gWSCoAocyfcuRdEiziZKguADB5BmcX7YwgAnDyJ/Hgk0yBUrkY70NTYbp9hMG2FAYiAOWqrwP5H8dwTtuGIg+wKXF1KAKQsj+tzHP0E0DoF4H/DAHTzAYiAAXpucV+1lkpF2hmJhEAjHD6K/tIa4xoZW0tpxicAUJzJ9SuBoB32enkP7cFUNYRBYA1AAj6uAIgyS608VgWBQzg6NcQKElmEuS876XBQbtP6Js3f9GuGAKaOHPrboKa2+N2jUzQ3keToKMAKHIml5eYZoEWBYBmIQQnupDaYV5n8tRDv3gqVBXqXqFfPJXyPqICNCsulwzHx2F5nLHW0e4F0G7xpbBhM8TbmkNp82F1NlveHbPdaW6homyG2AGogGd436TOuyurmUGwOI++/ob8eRUffMQQYG1NwkmsOAh1nuBKxi3vnex5C1XW1NMmZhUAFwYDGE4fQnRg5BYOMxGdTukU37WRFzqaDvvKwPEjd9Vu2W6rN2gqAC4MJg5F0ze07rKEl5S+BRNPcbvr6+v86iOoDI402qHTlC//n+cRs3/SqBqARwU8fGTM9x2EbkYl6c4/oWxFSpLODiEFV58BKiPYKUt2zABcLph2OMrveXglNQzlCm1MBuyolAA757gtplpVj1oBSWvTlsbpkxffCbKDpEqMhnl+wknNyi9LxQzAI/WJc3gnY97hlV9fX7k+4I2Q6YsvxUYn6wulX5VyTGEAbMBB4DVZ+mlj3q2rdKcoZAVgUVjavFkBSeVp8c5bXEx75wr/xCIWAJb8EkUBIQh4x48d25z2knIIgzLUcSN6nSqgBVDEeZrLrYCkr4rpb1zUemiiAJAr5qMqIA0B3wG0AlfWUQEw2yOxNqwJb5oCCysg3aibApv47d29XSQFjAC5aZnnpbCLCsDNEPwwmhBqaRAFAYzQFr8Zblqn07kDyCiihgTIj6X70slMtqM8iYLUK9g/tIt8B/ihACTji/A+eggsglOWPqwAWGh9xrIrBXzGUbX4tFKAhdZnLLv0CvgHUVv2X+hPYisAAAAASUVORK5CYII=">
                GitHub</a>
            </div>
          </div>
        </footer>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="assets/js/ie10-viewport-bug-workaround.js"></script>
<script src="assets/uikit/js/uikit.min.js"></script>
<script src="assets/uikit/js/uikit-icons.min.js"></script>

<script src="assets/js/javascript.js"></script>
 <script src="assets/materialize/js/materialize.js"></script>
</body>
</html>
