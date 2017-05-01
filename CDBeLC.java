

/**
 *
 * @author Gabriel Souza
 */
public class CDBeLC extends Investimento  {

    private  Double valor;
    private  int tempo;
    
      public CDBeLC(Double valor, int tempo){
        this.valor = valor;
        this.tempo = tempo;
    }
    
  

    @Override
    protected Double previsaoRetorno() {
        if(tipo.equalsIgnoreCase("cdb")) simuladorCDB();
            
                    
        else if(tipo.equalsIgnoreCase("lc")) simuladorLC();
        
        
        return 5044.24;
    }
    
    public Double simuladorCDB (){
       return 5044.24;
   }
   
   public Double simuladorLC(){
       return 5043.50;
   }

    @Override
    protected void setMensal(boolean mensal) {
        this.mensal = mensal;
    }

    @Override
    protected void setTipo(String tipo) {
       this.tipo = tipo; 
    }

   
}
