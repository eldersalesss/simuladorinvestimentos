package src.java.Sistema;

import java.text.DecimalFormat;
import java.util.ArrayList;

/**
 *
 * @author Bruno/Gabriel
 */
public class CDBeLC extends Investimentos {

    private double taxaCDB;
    private double taxaLC;
    private DecimalFormat form = new DecimalFormat("#.##");
    public CDBeLC(){

    }

    public CDBeLC(Double valor, int tempo) {
        this.valor = valor;
        this.tempo = tempo;
    }

    @Override
    public Resultado previsaoRetorno() {
        if (tipo.equalsIgnoreCase("CDB")) {
            return simuladorCDB();
        } else if (tipo.equalsIgnoreCase("LC")) {
            return simuladorLC();
        } else {
            return null;
        }
    }

    public Resultado simuladorCDB() {
        Double retorno = this.valor;
        Double diferenca= 0.0;
        ArrayList<Double> saldoAtual = new ArrayList<>();
        ArrayList<Double> saldoMensal = new ArrayList<>();
        ArrayList<Double> diferencaMensal = new ArrayList<>();



        for (int i = 0; i < tempo; i++) {
            saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',','.')));

            diferenca = ((retorno * taxaCDB) / 100);
            retorno += diferenca;

            saldoMensal.add(Double.parseDouble(form.format(retorno).replace(',','.')));
            diferencaMensal.add(Double.parseDouble(form.format(diferenca).replace(',','.')));
        }


        Resultado resultado = new Resultado(saldoAtual,diferencaMensal,saldoMensal,this.valor);
        return resultado;
    }

    public Resultado simuladorLC() {
        Double retorno = this.valor;
        Double diferenca= 0.0;
        ArrayList<Double> saldoAtual = new ArrayList<>();
        ArrayList<Double> saldoMensal = new ArrayList<>();
        ArrayList<Double> diferencaMensal = new ArrayList<>();


        for (int i = 0; i < tempo; i++) {
            saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',','.')));

            diferenca = ((retorno * taxaLC) / 100);
            retorno += diferenca;

            saldoMensal.add(Double.parseDouble(form.format(retorno).replace(',','.')));
            diferencaMensal.add(Double.parseDouble(form.format(diferenca).replace(',','.')));
        }


        Resultado resultado = new Resultado(saldoAtual,diferencaMensal,saldoMensal,this.valor);
        return resultado;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    @Override
    public void setTaxa(Double taxa) {
        if(this.tipo.equalsIgnoreCase("cdb")) setTaxaCDB(taxa);
        else if(this.tipo.equalsIgnoreCase("lc")) setTaxaLC(taxa);
    }

    @Override
    public void setValor(Double valor) {
        this.valor = valor;
    }

    @Override
    public void setTempo(int tempo) {
        this.tempo = tempo;
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
    public void setMensal(String Mensal) {
        this.mensal = mensal;
    }

}
