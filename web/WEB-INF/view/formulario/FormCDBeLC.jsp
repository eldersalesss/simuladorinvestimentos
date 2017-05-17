<%-- 
    Document   : FormCDBeLC
    Created on : 15/05/2017, 10:05:11
    Author     : Gabriel Mendonça
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CDBeLC</title>
    </head>
    <body>
        <form name="formCDBeLC" method="POST">
            <center>
                <h3> Investimento CDB e LC </h3>
                Valor(R$): </br>
                <input type="number" name="txtValor" min="0.00" step="1000" /> </br>
                Tempo(Meses): </br>
                <input type="number" name="txtTempo" min="1"/> </br>

                Tipo: </br>
                <select name="tipo" >
                    <option>CDB</option>
                    <option>LC</option>
                </select> </br>

                </br>

                <input type="submit" value="Simular" /> </br> </br>
                <input type="text" name="txtResultado" value="Resultado" readonly="readonly" /> </br>
            </center>
        </form>
    </body>
</html>
