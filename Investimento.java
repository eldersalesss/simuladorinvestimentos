package Classes;



/*
 * @Gabriel Souza
 */
public class Investimento {
       private Double valor;
       private String tipo;
       private boolean mensal;
       
       
       public Investimento (Double valor, String tipo){
           this.valor = valor;
           this.tipo = tipo;
           
    }

    /**
     * @return the valor
     */
    public Double getValor() {
        return valor;
    }

    /**
     * @param valor the valor to set
     */
    public void setValor(Double valor) {
        this.valor = valor;
    }

    /**
     * @return the tipo
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * @param tipo the tipo to set
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    /**
     * @return the mensal
     */
    public boolean isMensal() {
        return mensal;
    }

    /**
     * @param mensal the mensal to set
     */
    public void setMensal(boolean mensal) {
        this.mensal = mensal;
    }
    
    
    // Métodos

    public Double previsaoRetornoTesouroDireto(){
          return 5037.21;
      }
  
    public Double previsaoRetornoLCIeLCA(){
          return 5046.01;
      }
}

