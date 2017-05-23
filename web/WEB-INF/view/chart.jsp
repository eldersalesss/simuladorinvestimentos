<%-- 
    Document   : chart
    Created on : 23/05/2017, 00:49:40
    Author     : Elder
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="chart-drawed">



    <style type="text/css">

        *{
            font-family: calibri;
        }

        .box {
            margin: 0px auto;
            width: 100%;
        }

        .box-chart {
            width: 100%;
            margin: 0 auto;
            padding: 10px;
        }

    </style>




<div class="box">


    <div id="chartDiv" class="box-chart">

        <canvas id="GraficoLine" style="width:100%;"></canvas>


        <script>
            var options = {
                responsive:true
            };

            var data = {
                labels: [<c:forEach items="${saldoMensal}" varStatus="mes">
                    <c:if test="${mes.count < saldoMensal.size()}">
                    "${mes.count}º Mes",
                    </c:if>
                    <c:if test="${mes.count == saldoMensal.size()}">
                    "${mes.count}º Mes"
                    </c:if>
                    </c:forEach>],

                datasets: [
                    {
                        label: "Dados primários",
                        lineTension: 0,
                        fillColor: "rgba(255,69,0,0.2)",
                        strokeColor: "rgba(255,69,0,1)",
                        pointColor: "rgba(255,69,0,1)",
                        pointStrokeColor: "#fff",
                        pointHighlightFill: "#fff",
                        pointHighlightStroke: "rgba(255,69,0,1)",
                        data: [<c:forEach items="${saldoMensal}" var="saldo" varStatus="mes">
                            <c:if test="${mes.count < saldoMensal.size()}">
                            ${saldoMensal.get(mes.index)},
                            </c:if>
                            <c:if test="${mes.count == saldoMensal.size()}">
                            ${saldoMensal.get(mes.index)}
                            </c:if>
                            </c:forEach> ]
                    }

                ]
            };



                var ctx = document.getElementById("GraficoLine").getContext("2d");

                var LineChart = new Chart(ctx).Line(data, options);


        </script>

    </div>

</div>

</div>
