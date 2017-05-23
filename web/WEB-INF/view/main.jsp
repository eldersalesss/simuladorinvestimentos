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
