


<!--Edited by Elder-->
<section id="taxas">
    <nav class="uk-background-muted">
        <div class="container">
            <div class="row" id="row-investimento">
                <div class="col-md-4 text-center col-md-offset-4" id="colum-investimento" uk-scrollspy="cls:uk-animation-fade">
                    <i class="material-icons md-96">trending_up</i>
                    <h3>Investimentos</h3>
                    <p>Confira como funciona cada investimento e saiba qual é o ideal para sua escolha.</p>
                    <a id="btn-investimentos" class="waves-effect waves-light btn" uk-scrollspy="cls:uk-animation-slide-left-medium">Confira</a>
                </div>
            </div>
        </div>
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
