/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sistema;

/**
 *
 * @author Bruno/Gabriel
 */
public class CDBeLC extends Investimentos {

    private double taxaCDB;
    private double taxaLC;

    public CDBeLC(Double valor, int tempo) {
        this.valor = valor;
        this.tempo = tempo;
    }

    @Override
    public Double previsaoRetorno() {
        if (tipo.equalsIgnoreCase("CDB")) {
            return simuladorCDB();
        } else if (tipo.equalsIgnoreCase("LC")) {
            return simuladorLC();
        } else {
            return null;
        }
    }

    public Double simuladorCDB() {
        Double retorno = this.valor;

        for (int i = 0; i < tempo; i++) {
            retorno += ((retorno * taxaCDB) / 100);
        }

        return retorno;
    }

    public Double simuladorLC() {
        Double retorno = this.valor;

        for (int i = 0; i < tempo; i++) {
            retorno += ((retorno * taxaLC) / 100);
        }

        return retorno;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Double getValor() {
        return this.valor;
    }

    public int getTempo() {
        return this.tempo;
    }

    public Double getTaxaCDB() {
        return taxaCDB;
    }

    public void setTaxaCDB(Double taxaCDB) {
        this.taxaCDB = taxaCDB;
    }

    public Double getTaxaLC() {
        return taxaLC;
    }

    public void setTaxaLC(Double taxaLC) {
        this.taxaLC = taxaLC;
    }

    @Override
    public void setMensal(boolean Mensal) {
        this.mensal = mensal;
    }

}
