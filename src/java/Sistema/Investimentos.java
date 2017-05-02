/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sistema;

/**
 *
 * @author Gabriel Souza
 */
public abstract class Investimentos {

    protected Double valor;
    protected int tempo;
    protected String tipo;
    protected boolean mensal = false;

    public Investimentos() {

    }

    protected abstract Double previsaoRetorno();

    protected abstract void setMensal(boolean Mensal);

    protected abstract void setTipo(String tipo);

}
