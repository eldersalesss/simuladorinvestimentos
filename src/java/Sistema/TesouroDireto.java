/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sistema;

/**
 *
 * @author Elder
 */
public class TesouroDireto{
    
    private Double valor;
    private int tempo;
    private Double taxaSELIC = 0.7442;
    
    
    
    public TesouroDireto(Double valor, int tempo) {
        this.valor = valor;
        this.tempo = tempo;
    }

    public Double getValor() {
        return valor;
    }

    public int getTempo() {
        return tempo;
    }

    public Double getTaxaSELIC() {
        return taxaSELIC;
    }
    
    
    public Double simuladorSelic(){
        return ((taxaSELIC * tempo) * valor)/100 + valor;
    }
    
    
    
    
}
