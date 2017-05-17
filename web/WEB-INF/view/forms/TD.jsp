<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: adrianewey
  Date: 15/05/17
  Time: 08:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="calcular" method="POST" >
        <h3> Investimento LCI e LCA </h3>
        <input hidden name="classe" value="LCIeLCA"></inputhidden>
        <input type="number" name="valor" placeholder="Valor 'R$'"><br><br>
        <select name="tipo">
            <option value="lci">Investimento LCI</option>
            <option value="lca">Investimento LCA</option>
        </select> <br><br>
        Escolha o tempo de duração (Mês ou Ano) <br><br>
        <input type="number" name="tempo" placeholder="Mês"><br><br>
        <input type="number" name="tempoAno" placeholder="Ano"><br><br>
        <input type="submit" name="btnSimular" value="Calcular"><br><br>
    </form>
</body>
</html>
