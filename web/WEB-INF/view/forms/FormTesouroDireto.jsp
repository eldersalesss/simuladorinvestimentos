<%-- 
    Document   : FormTesouroDireto
    Created on : 15/05/2017, 15:50:02
    Author     : Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="formTesouroDireto" method="POST">
            <center>
                Valor(R$): </br>
                <input type="number" name="txtValor" min="0.00" step="1000" /> </br>
                Tempo(Meses): </br>
                <input type="number" name="txtTempo" min="1"/> </br>

                Tipo: </br>
                <select name="tipo" >
                    <option>Selic</option>
                    <option>IPCA</option>
                    <option>Prefixado</option>
                </select> </br>

                </br>

                <input type="submit" value="Simular" /> </br> </br>
                <input type="text" name="txtResultado" value="Resultado" readonly="readonly" /> </br>
            </center>
        </form>
    </body>
</html>
