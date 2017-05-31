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
    <div id="sticky-menu" style="display: none" class="menu-sticky" uk-sticky>
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
                            <a class="inve-link menu" uk-scroll href="#primeiro-divisor" >Investimentos</a>
                        </li>
                        <li class="navbar-link">
                            <a class="taxa-link menu" uk-scroll href="#segundo-divisor" >Taxas</a>
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
                <div class="uk-inline uk-visible-toggle ">
            
            <a id="previous-left" class="uk-position-center-left uk-position-small uk-hidden-hover uk-slidenav-large" href="#" uk-slidenav-previous></a>
            <a id="next-right" class="uk-position-center-right uk-position-small uk-hidden-hover uk-slidenav-large" href="#" uk-slidenav-next></a>
        
                
<div style="width: 500" class="carousel carousel-slider center" data-indicators="true">
    
                            <div class="carousel-fixed-item center">
                              <a href="#inv" uk-scroll="duration:1500" class="btn waves-effect white black-text darken-text-2">Simule</a>
                            </div>
                            <div class="carousel-item   " href="#one!">
                              <div id="tesouro-div">
                                <center>  <h2>  Tesouro Direto  </h3>  </center>
                                <center>  <h4> <font color="green"> Como Funciona ? </font>  </h2>  </center> <br>
                                <p align="justify">  É considerada uma opção de investimento de baixo custo e que oferece rentabilidade superior à Poupança, sendo a aplicação de menor risco do mercado e ideal para quem quer começar a investir seu dinheiro. </p>
                                <br>
                                <p> <font color="red"> <b> Invista no Tesouro Direto: Clique no Botão Abaixo. </b> </font> </p>
                               
                                <br>
                              </div>
                            </div>
                            <div class="carousel-item " href="#two!">
                              <div id="cdb-div">
                                    <center>  <h2>  CDB e LC  </h3>  </center>
                                    <center>  <h4> <font color="green"> Como Funciona ? </font>  </h2>  </center> <br>

                                    <p align="justify"> São investimentos que estão entre os mais rentáveis em renda fixa, que dão ao investidor a opção de saber exatamente quanto seu dinheiro vai render ou optar por acompanhar as taxas de juros do mercado. </p>

                                    <br>
                                    <p> <font color="red"> <b> Invista no CDB e LC: Clique no Botão Abaixo. </b> </font> </p>
                                    
                                    <br>
                               </div>
                            </div>
                            <div class="carousel-item" href="#three!">
                              <div id="lci-div">


                                    <center> <h2>  LCI e LCA </h3>  </center>
                                    <center>  <h4> <font color="green"> Como Funciona ? </font>  </h2>  </center> <br>

                                    <p align="justify"> São dois tipos de investimentos em renda fixa de curto prazo e isentos de Imposto de Renda, que dão ao investidor a opção de saber exatamente quanto seu dinheiro vai render ou optar por acompanhar as taxas de juros do mercado. </p>

                                    <br>
                                    <p> <font color="red"> <b> Invista no LCI e LCA: Clique no Botão Abaixo. </b> </font> </p>
                                    


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
        <div class="container">
            <div class="row" id="row-taxa">
                <div class="col-md-4 col-md-offset-4 text-center">
                    <i class="material-icons md-96" uk-scrollspy="cls:uk-animation-slide-right">attach_money</i>
                    <h3>Taxas</h3>
                    <p>Veja a tabela de taxas dos investimentos</p>
                </div>
                <div class="col-md-6 col-md-offset-3 table-taxa" uk-scrollspy="cls:uk-animation-fade">
                    <div class="table-responsive">
                        <table class="table text-center">
                            <thead>
                            <tr>
                                <th class="text-center">Investimentos</th>
                                <th class="text-center">Taxas(%)</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Selic</td>
                                <td>Mark</td>
                            </tr>
                            <tr>
                                <td>IPCA</td>
                                <td>Jacob</td>
                            </tr>
                            <tr>
                                <td>Prefixado</td>
                                <td>Larry</td>
                            </tr>
                            <tr class="table-separador">
                                <td>LCI</td>
                                <td>Larry</td>
                            </tr>
                            <tr>
                                <td>LCA</td>
                                <td>Larry</td>
                            </tr>
                            <tr class="table-separador">
                                <td>CDB</td>
                                <td>Larry</td>
                            </tr>
                            <tr>
                                <td>LC</td>
                                <td>Larry</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
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
                                                                            <input value="0" name="tempoAno" id="tempo-investimento" class="validate text-center tooltipped" data-position="bottom" data-delay="50" data-tooltip="Quantidade de anos" type="number">
                                                                            <label for="tempo-investimento">Anos</label>
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
                                                                            <input value="0" name="tempoAno" id="tempo-investimento" class="validate text-center tooltipped" data-position="bottom" data-delay="50" data-tooltip="Quantidade de anos" type="number">
                                                                            <label for="tempo-investimento">Anos</label>
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
<nav class="divisor uk-background-secondary">
    <div class="uk-divider-icon divisor">
    </div>
</nav>

<section id="inv">
    <nav class="uk-background-muted">
        <div class="container">
            <div class="row" id="row-investimento">
                <div class="col-md-4 text-center col-md-offset-4" id="colum-investimento">
                    <i class="material-icons md-96">trending_up</i>
                    <h3>Sobre os Tipos de Investimentos</h3> <br>

                    <div id="tesouro-div">
                    <center>  <h2>  Tesouro Direto  </h3>  </center>
                    <center>  <h4> <font color="green"> Como Funciona ? </font>  </h2>  </center> <br>
                    <p align="justify">  É considerada uma opção de investimento de baixo custo e que oferece rentabilidade superior à Poupança, sendo a aplicação de menor risco do mercado e ideal para quem quer começar a investir seu dinheiro. </p>
                    <br>
                    <p> <font color="red"> <b> Invista no Tesouro Direto: Clique no Botão Abaixo. </b> </font> </p>
                    <a href="#terceiro-divisor" uk-scroll="duration:1500">
                        <button class="btn btn-default btn-lg waves-effect" type="button" id="btn-simular"><font color="black">Tesou. Direto </font></button>
                    </a>
                    <br>
                    </div>
                    <div id="cdb-div">
                        <center>  <h2>  CDB e LC  </h3>  </center>
                        <center>  <h4> <font color="green"> Como Funciona ? </font>  </h2>  </center> <br>

                        <p align="justify"> São investimentos que estão entre os mais rentáveis em renda fixa, que dão ao investidor a opção de saber exatamente quanto seu dinheiro vai render ou optar por acompanhar as taxas de juros do mercado. </p>

                        <br>
                        <p> <font color="red"> <b> Invista no CDB e LC: Clique no Botão Abaixo. </b> </font> </p>
                        <a href="#terceiro-divisor" uk-scroll="duration:1500">
                            <button class="btn btn-default btn-lg waves-effect" type="button" id="btn-simular"> <font color="black">CDB e LC </font>
                            </button>
                        </a>
                        <br>
                    </div>


                    <div id="lci-div">


                        <center> <h2>  LCI e LCA </h3>  </center>
                        <center>  <h4> <font color="green"> Como Funciona ? </font>  </h2>  </center> <br>

                        <p align="justify"> São dois tipos de investimentos em renda fixa de curto prazo e isentos de Imposto de Renda, que dão ao investidor a opção de saber exatamente quanto seu dinheiro vai render ou optar por acompanhar as taxas de juros do mercado. </p>

                        <br>
                        <p> <font color="red"> <b> Invista no LCI e LCA: Clique no Botão Abaixo. </b> </font> </p>
                        <a href="#terceiro-divisor" uk-scroll="duration:1500">
                            <button class="btn btn-default btn-lg waves-effect" type="button" id="btn-simular"> <font color="black">LCI e LCA </font>
                            </button>
                        </a>


                    </div>

                    </a>
                </div>

            </div>
        </div>
        </div>
    </nav>

    <center>  <a href="#" uk-totop uk-scroll class="btn-topo"> <b><h3> Topo </h3> </b></a>  </center>

</section>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->

<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="assets/js/ie10-viewport-bug-workaround.js"></script>
<script src="assets/uikit/js/uikit.min.js"></script>
<script src="assets/uikit/js/uikit-icons.min.js"></script>

<script src="assets/js/javascript.js"></script>

</body>
</html>