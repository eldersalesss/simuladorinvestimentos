 $(document).ready(function() {

     $('#formA').submit( function (e) {

         if($('#check').is(':checked')){
             $('#mensal').val("true");
         }

         $.post('calcular', $(this).serialize(), function (data) {
             console.log("Passou post")

             $('#resultValor').remove();
             $('#resultadoValor').html(data);

             $.post('doChart',function (chart) {

                 console.log(chart)


                 $.post('doTable',function (table1) {
                     console.log(table1)
                     $('#table1').remove();
                     $('#table-normal').html(table1)
                 });

                 $.post('doTableDetail',function (table2) {
                     console.log(table2)
                     $('#table2').remove();
                     $('#table-detalhada').html(table2);
                     $('#load').hide();
                     $('#resultado').show();
                     $('#chart-drawed').remove();
                     $('#chart-draw').html(chart);
                 });


             });

         });

         e.preventDefault();

     });


 $('#formB').submit( function (e) {


     if($('#check').is(':checked')){
         $('#mensal').val("true");
     }

     $.post('calcular', $(this).serialize(), function (data) {
         console.log("Passou post")

         $('#resultValor').remove();
         $('#resultadoValor').html(data);

         $.post('doChart',function (chart) {

             console.log(chart)


             $.post('doTable',function (table1) {
                 console.log(table1)
                 $('#table1').remove();
                 $('#table-normal').html(table1)
             });

             $.post('doTableDetail',function (table2) {
                 console.log(table2)
                 $('#table2').remove();
                 $('#table-detalhada').html(table2);
                 $('#load').hide();
                 $('#resultado').show();
                 $('#chart-drawed').remove();
                 $('#chart-draw').html(chart);
             });

         });

     });

     e.preventDefault();

 });


 $('#formC').submit( function (e) {


     if($('#check').is(':checked')){
         $('#mensal').val("true");
     }

     $.post('calcular', $(this).serialize(), function (data) {
         console.log("Passou post")

         $('#resultValor').remove();
         $('#resultadoValor').html(data);

         $.post('doChart',function (chart) {

             console.log(chart)


             $.post('doTable',function (table1) {
                 console.log(table1)
                 $('#table1').remove();
                 $('#table-normal').html(table1)
             });

             $.post('doTableDetail',function (table2) {
                 console.log(table2)
                 $('#table2').remove();
                 $('#table-detalhada').html(table2);
                 $('#load').hide();
                 $('#resultado').show();
                 $('#chart-drawed').remove();
                 $('#chart-draw').html(chart);
             });

         });

     });

     e.preventDefault();

 });




    $('select').material_select();

   //$('#inicio').hide().fadeIn(1500);
     $('#load').hide();
     $('#resultado').hide();

     //$('#sticky-menu').hide();



     $(window).bind('scroll', function() {
         var navHeight = 15;

         if ($(window).scrollTop() > navHeight) {
             $('#sticky-menu').show("always");

             /*$("#sticky-menu").removeClass("uk-hidden",function () {
                 Materialize.fadeInImage($('#sticky-menu'));
             });*/
         } else {
             //if(!$('#sticky-menu').hasClass("uk-hidden")) $("#sticky-menu").addClass("uk-hidden");
             $('#sticky-menu').hide("always");




         }
     });

  });





$('#change').on('click',changer);



function changer(){
    console.log("clickado")
    //$('#inv-confira').hide('slow');
    $('#carousel-inv').hide();
}

$('#simular1').on('click',trocarDiv);
 $('#simular2').on('click',trocarDiv);
 $('#simular3').on('click',trocarDiv);

 $('#other-simu').on('click',function () {
     $('#resultado').hide('slow');
     $('#simulador').show('slow');
     clear()
 });

 $('#btn-simular').on('click',trocarDivReverse);

/* $('.taxa-link').on('click',showInvTaxa).UIkit.scroll($('#segundo-divisor'));
 $('.inve-link').on('click',showInvTaxa).UIkit.scroll($('#taxas'));

 function showInvTaxa() {
     $('#primeiro-divisor').show();
     $('#taxas').show();

 }*/

 function trocarDiv() {


            $('#simulador').hide('slow');
            $('#load').show();



       if($('#check').is(':checked')){
           $('#mensal').val("true");
       }


        /*$('#taxas').hide();
        $('#primeiro-divisor').hide();*/
 }

 function trocarDivReverse() {
     $('#resultado').hide('slow');
     $('#simulador').show('slow');
     clear()
   /*  $('#taxas').hide();
     $('#primeiro-divisor').hide();*/

 }
/*
 var options = [  {selector: '#sticky-menu', offset: 500, callback: function() {

        $('#sticky-menu').show();
         Materialize.fadeInImage();

     }
     } ];

 Materialize.scrollFire(options);
*/


function clear() {
    $('#dinheiro-investido').val("");
    $('#tempo-investido').val("0");
    $('#check').prop('checked',false);

}



