<%-- 
    Document   : admin
    Created on : 09/06/2017, 13:45:34
    Author     : adria
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    
    $('#form-edit').submit(function(e){
        console.log("AK´PSKDSAP")
       $.post('adminChanges',$(this).serialize(),function(data){
          $('#adm-mod').remove();
         
          $('#modal-adm').html(data);
          Materialize.toast('Taxa Alterada com Sucesso', 4000)
          
          $.post('attTableTaxas',$(this).serialize(),function(table){
              $('#table-taxas').remove();
              $('#nav-taxa').html(table);
          });
       }); 
       e.preventDefault();
    });
</script>

      
        <div id="adm-mod" class="uk-modal-dialog">
            <button class="uk-modal-close-default" type="button" uk-close></button>
            <div class="uk-modal-header">
                <h2 class="uk-modal-title">Admin</h2>
            </div>
            <div class="uk-modal-body">
                <form id="form-edit">
                <table id="table-admin">
                    <thead>
                        <tr>
                            <th>
                                Investimento
                            </th>
                            <th>
                                Taxas
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                Selic
                            </td>
                            <td>
                                <input name="selic" value="${selicValue}"></input>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                IPCA
                            </td>
                            <td>
                                <input name="ipca"  value="${ipcaValue}"></input>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Prefixado
                            </td>
                            <td>
                                <input name="prefixado"  value="${prefixadoValue}"></input>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                LCI
                            </td>
                            <td>
                                <input name="lci"  value="${lciValue}"></input>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                LCA
                            </td>
                            <td>
                                <input name="lca" value="${lcaValue}"></input>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                CDB
                            </td>
                            <td>
                                <input name="cdb" value="${cdbValue}"></input>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                LC
                            </td>
                            <td>
                                <input name="lc"  value="${lcValue}"></input>
                            </td>
                        </tr>
                    </tbody>
                </table>
                            
                            <input id="save-taxa" type="submit" class="uk-button" value="Salvar"/>
                </form>
            </div>
        </div>
    
