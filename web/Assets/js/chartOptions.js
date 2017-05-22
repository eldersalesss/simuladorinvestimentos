var options = {
    responsive:true
};


var randomnb = function(){ return Math.round(Math.random()*300)};
var data = {
    labels: ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"],
    datasets: [
        {
            label: "Dados primários",
            lineTension: 0,
            fillColor: "rgba(220,220,220,0.2)",
            strokeColor: "rgba(220,220,220,1)",
            pointColor: "rgba(220,220,220,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(220,220,220,1)",
            data: [randomnb(), randomnb(), randomnb(), randomnb(), randomnb(), randomnb(), randomnb(), randomnb(), randomnb(), randomnb(), randomnb(), randomnb()]
        },
        {
            label: "Dados secundários",
            lineTension: 0,
            fillColor: "rgba(255,69,0,0.2)",
            strokeColor: "rgba(255,69,0,1)",
            pointColor: "rgba(255,69,0,1)",
            pointStrokeColor: "#fff",
            pointHighlightFill: "#fff",
            pointHighlightStroke: "rgba(255,69,0,1)",
            data: [28, 48, 40, 19, 86, 27, 90, 200, 87, 20, 50, 20]
        }
    ]
};

window.onload = function(){

    var ctx = document.getElementById("GraficoLine").getContext("2d");

    var LineChart = new Chart(ctx).Line(data, options);

}