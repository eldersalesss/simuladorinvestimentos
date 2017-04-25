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
public class CDBeLC {
    
    private Double valor;
    private int tempo;

    public CDBeLC(Double valor, int tempo) {
        this.valor = valor;
        this.tempo= tempo;
    }
    
    //retorna o valor esperado de investimneto em 1 mês
    public Double simuladorCDB (){
         return 5044.24;
     }
    
    //retorna o valor esperado de investimneto em 1 mês
    public Double simuladorLC(){
        return 5043.50;
    }
    
    
}
