/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sistema;

/**
 *
 * @author Bruno
 */
public class CDBeLC implements Investimentos {

    private double taxaCDB;
    private double taxaLC;
    private double valor;
    private int tempo;

    public CDBeLC(int valor, int tempo) {
        this.valor = valor;
        this.tempo = tempo;
    }

    public double simuladorCDB() {
        throw new UnsupportedOperationException("Método em desenvolvimento");
    }

    public double simuladorLC() {
        throw new UnsupportedOperationException("Método em desenvolvimento");
    }

}
