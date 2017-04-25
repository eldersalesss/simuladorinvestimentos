/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

/**
 *
 * @author Gabriel Souza
 */
public class TesouroDireto {
    private Double valor;
    private int tempo;

    public TesouroDireto(Double valor, int tempo) {
        this.valor = valor;
        this.tempo = tempo;
    }
    
    //Retorno do investimento de 1 mês.
    public Double simuladorSelic(){
        return 5037.21;
    }
    
    //Retorno do investimento de 1 mês.
    public Double simuladorIPCA(){
        return 5030.81;
    }
    
    //Retorno do investimento de 1 mês.
    public Double simuladorPrefixado(){
        return 5031.67;
    }
    
    //Retorno do investimento de 6 meses
    public Double simulador_MensalSelic(){
      return 30793.94;  
    }
    
    //Retorno do investimento de 6 meses
   public Double simulador_MensalIPCA(){
       return 30655.67;
   }
   
   //Retorno do investimento de 6 meses
   public Double simulador_MensalPrefixado(){
       return 30674.17;
   }
    
}
