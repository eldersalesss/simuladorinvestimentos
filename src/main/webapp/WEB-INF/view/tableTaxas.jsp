<%-- 
    Document   : tableTaxas
    Created on : 09/06/2017, 17:51:57
    Author     : adria
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<script>
    
</script>

<div id="table-taxas" class="container">
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
                                <td>${selicValue}</td>
                            </tr>
                            <tr>
                                <td>IPCA</td>
                                <td>${ipcaValue}</td>
                            </tr>
                            <tr>
                                <td>Prefixado</td>
                                <td>${prefixadoValue}</td>
                            </tr>
                            <tr class="table-separador">
                                <td>LCI</td>
                                <td>${lciValue}</td>
                            </tr>
                            <tr>
                                <td>LCA</td>
                                <td>${lcaValue}</td>
                            </tr>
                            <tr class="table-separador">
                                <td>CDB</td>
                                <td>${cdbValue}</td>
                            </tr>
                            <tr>
                                <td>LC</td>
                                <td>${lcValue}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
