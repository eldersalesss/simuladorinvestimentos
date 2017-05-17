<%-- 
    Document   : FormGrafico
    Created on : 17/05/2017, 00:44:16
    Author     : Elder
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        DefaultPieDataset dado = new DefaultPieDataser();
            dado.setValue("Poupança",5000);
            dado.setValue("LCA",5100);
            dado.setValue("LCI",5200);
            
            JFreeChart grafico = ChartFactory.createPieChart("Gráfico", dado, true, true, true); 
    </body>
</html>
