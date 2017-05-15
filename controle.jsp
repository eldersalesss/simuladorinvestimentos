<%@page import="codigos.Teste"%>

<%
    // Cria o objeto calculadora
    Teste invest = new Teste();
    
    // Pega os valores do formulário (postados)
    invest.setValorInvestimento(request.getParameter("valorInvestimento"));
    invest.setTempoMes(request.getParameter("tempoMes"));
    invest.setTempoAno(request.getParameter("tempoAno"));
    invest.setOperacaoInvestimento(request.getParameter("operacaoInvestimento"));
    
    if ((invest.getValorInvestimento() != 0.0) && (invest.getTempoMes() != 0)){
        out.print("Resultado" +invest.CalcularInvestimentoMes());
    }else
     if ((invest.getValorInvestimento() != 0.0) && (invest.getTempoAno() != 0)){
        out.print("Resultado" +invest.CalcularInvestimentoAno());
    }
    

%>

<br><br> <a href="PaginaInicial.html">Voltar</a>