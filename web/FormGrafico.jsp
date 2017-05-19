<%-- 
    Document   : FormGrafico
    Created on : 18/05/2017, 19:27:10
    Author     : Elder
--%>


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
//GRAFICO MODELO PIZZA
//DefaultPieDataset dado = new DefaultPieDataset();
//dado.setValue("Poupança", new Double(5100.2));
//dado.setValue("Investimento", new Double(5300.0));
//JFreeChart grafico = ChartFactory.createPieChart("Simulador de Investimentos", dado, true, true, false);
//
//try {
//ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
//
//File imagem = new File(
//        "D:/Ciência da Computação/Arquivo/ProjetosNetbeans/simuladorinvestimentos/web/FormGrafico.png");
//ChartUtilities.saveChartAsPNG(imagem, grafico, 600, 400, info);
//}
//catch (Exception e) {
//    out.println(e);
//}

// double[][] dafo = new double[][]{
//  {210, 300, 320, 265, 299},
//  {200, 304, 201, 201, 340}
//  };

// GRAFICO MODELO AREA
// CategoryDataset novoDado = DatasetUtilities.createCategoryDataset(
//  "Simulador", "", dado);
//
// JFreeChart grafico = ChartFactory.createAreaChart(
//  "Silumação", "", "Valor", novoDado, 
//   PlotOrientation.VERTICAL,
//  true, true, false);
//
// CategoryPlot plot = grafico.getCategoryPlot();
// plot.setForegroundAlpha(0.5f);
//
// grafico.setBackgroundPaint(new Color(249, 231, 236));
//
//try {
//ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());
//
//File imagem = new File(
//        "D:/Ciência da Computação/Arquivo/ProjetosNetbeans/simuladorinvestimentos/web/FormGrafico.png");
//ChartUtilities.saveChartAsPNG(imagem, grafico, 600, 400, info);
//}
//catch (Exception e) {
//    out.println(e);
//}


//GRAFICO MODELO BARRAS
double poupanca = 5100.2;
double investimento = 5300.5;
String poupancaS = String.valueOf(poupanca); 
String investimentoS = String.valueOf(investimento);

DefaultCategoryDataset dado = new DefaultCategoryDataset();
dado.setValue(poupanca, "Poupança", poupancaS);
dado.setValue(investimento, "Investimento", investimentoS);
JFreeChart grafico = ChartFactory.createBarChart(
        "Simulação","Investimentos","Valor (R$)", dado,PlotOrientation.VERTICAL ,true, true, true);

try {
ChartRenderingInfo info = new ChartRenderingInfo(new StandardEntityCollection());

File imagem = new File(
    "D:/Ciência da Computação/Arquivo/ProjetosNetbeans/simuladorinvestimentos/web/FormGrafico.png");
ChartUtilities.saveChartAsPNG(imagem, grafico, 300, 300, info);
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
        <IMG SRC="FormGrafico.png" WIDTH="300" HEIGHT="300" BORDER="0" 
   USEMAP="#grafico">
    </body>
</html>
