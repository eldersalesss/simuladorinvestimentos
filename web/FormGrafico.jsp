<%-- 
    Document   : FormGrafico
    Created on : 18/05/2017, 19:27:10
    Author     : Elder
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page  import="java.awt.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="org.jfree.chart.*" %>
<%@ page  import="org.jfree.chart.axis.*" %>
<%@ page  import="org.jfree.chart.entity.*" %>
<%@ page  import="org.jfree.chart.labels.*" %>
<%@ page  import="org.jfree.chart.plot.*" %>
<%@ page  import="org.jfree.chart.renderer.category.*" %>
<%@ page  import="org.jfree.chart.urls.*" %>
<%@ page  import="org.jfree.data.category.*" %>
<%@ page  import="org.jfree.data.general.*" %>
<!DOCTYPE html>

<%
    
DefaultPieDataset dado = new DefaultPieDataset();
dado.setValue("Poupança", new Double(5100.2));
dado.setValue("Investimento", new Double(5300.0));
JFreeChart grafico = ChartFactory.createPieChart("Simulador de Investimentos", dado, true, true, false);

try {
ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());

File imagem = new File(
        "D:/Ciência da Computação/Arquivo/ProjetosNetbeans/simuladorinvestimentos/web/FormGrafico.png");
ChartUtilities.saveChartAsPNG(imagem, grafico, 600, 400, info);
}
catch (Exception e) {
    out.println(e);
}


%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <IMG SRC="FormGrafico.png" WIDTH="600" HEIGHT="400" BORDER="0" 
   USEMAP="#grafico">
    </body>
</html>
