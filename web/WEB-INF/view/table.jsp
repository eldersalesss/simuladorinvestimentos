<%--
  Created by IntelliJ IDEA.
  User: adrianewey
  Date: 21/05/17
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table id="table-normal">
    <thead class="text-center">
        <tr>
            <th class="text-center">Mês</th>
            <th class="text-center">Saldo</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${saldoMensal}" var="saldo" varStatus="mes">
        <tr>
            <td>${mes.count}</td>
            <td>${saldo}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
