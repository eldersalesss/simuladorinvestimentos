/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.java.Sistema;

/**
 *
 * @author Gabriel Souza
 */
public abstract class Investimentos {

    protected Double valor;
    protected int tempo;
    protected String tipo;
    protected String mensal = "false";

    public Investimentos() {

    }

    public abstract Resultado previsaoRetorno();

    public abstract void setMensal(String Mensal);

    public abstract void setTipo(String tipo);

    public abstract void setTaxa(Double taxa);

    public abstract void setValor(Double valor);

    public abstract void setTempo(int tempo);

    public abstract Double getValor();

}
