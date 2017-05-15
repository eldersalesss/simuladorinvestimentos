
package codigos;

/**
 *
 * @author asus
 */
public class Teste {
   private double valorInvestimento;
   private String operacaoInvestimento;
   private int tempoMes;
   private int tempoAno;
   private double taxaLCI = 0.9202;
   private double taxaLCA = 0.8912;
   private String mensagem;

   
    public double getValorInvestimento() {
        return valorInvestimento;
    }

   
    public void setValorInvestimento(String valor) {
       
             this.valorInvestimento = Double.parseDouble(valor);
        
    }

    public String getOperacaoInvestimento() {
        return operacaoInvestimento;
    }

   
    public void setOperacaoInvestimento(String operacaoInvestimento) {
        this.operacaoInvestimento = operacaoInvestimento;
    }

    public String getMensagem() {
        return mensagem;
    }
   
    public int getTempoMes() {
        return tempoMes;
    }

    
    public void setTempoMes(String Mes) {
        
         //try{
            // se estiver correto atribui um valor a váriavel
             this.tempoMes = Integer.parseInt(Mes);
        //}catch (NumberFormatException e){
          //  this.mensagem +="<br> O tempo de investimento (Mês) parece não ser um número válido";
            
        //}
    }

   
    // public boolean validar(){
      //  return !mensagem.equals(" ");
    //}
    
    public int getTempoAno() {
        return tempoAno;
    }

    
    public void setTempoAno(String Ano) {
        
            this.tempoAno = Integer.parseInt(Ano);
    }
    
    
    public double getTaxaLCI() {
        return taxaLCI;
    }

   
    public void setTaxaLCI(double taxaLCI) {
        this.taxaLCI = taxaLCI;
    }

    
    public double getTaxaLCA() {
        return taxaLCA;
    }

    
    public void setTaxaLCA(double taxaLCA) {
        this.taxaLCA = taxaLCA;
    }
   
   public Double CalcularInvestimentoMes (){
       double resultado = valorInvestimento;
       
       switch(operacaoInvestimento){
            case "lci":
                 for (int i = 0; i < getTempoMes(); i++) {
            resultado += ((resultado * taxaLCI) / 100);
                 }
                break;
            case "lca":
                  for (int i = 0; i < getTempoMes(); i++) {
            resultado += ((resultado * taxaLCA) / 100);
                 }
                break;
       }
       
       return resultado;
   }
   
   
    public Double CalcularInvestimentoAno (){
       double resultado = valorInvestimento;
       
       switch(operacaoInvestimento){
            case "lci":
                 for (int i = 0; i < getTempoAno(); i++) {
            resultado += ((resultado * taxaLCI) / 100);
                 }
                break;
            case "lca":
                  for (int i = 0; i < getTempoAno(); i++) {
            resultado += ((resultado * taxaLCA) / 100);
                 }
                break;
       }
       
       return resultado;
   }

    
  
}
