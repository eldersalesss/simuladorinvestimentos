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

<html>
<body>
<table id="table-normal">
    <thead class="text-center">
        <tr>
            <c:if test="${anual.equalsIgnoreCase('true')}">
            <th class="text-center">Ano</th>
            </c:if>
            <c:if test="${anual.equalsIgnoreCase('false')}">
                <th class="text-center">Mês</th>
            </c:if>
            <th class="text-center">Saldo</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${saldoMensal}" var="saldo" varStatus="mes">
        <tr>
            <td class="text-center">${mes.count}</td>
            <td class="text-center">${saldo}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>