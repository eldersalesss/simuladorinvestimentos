package src.java.Sistema;

import java.text.DecimalFormat;
import java.util.ArrayList;

/**
 *
 * @author Thauan
 */
public class LCIeLCA extends Investimentos {

    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
     */
    private Double taxaLCI;//0.9202%
    private Double taxaLCA; //0.8912;%
    private DecimalFormat form = new DecimalFormat("#.##");

    public LCIeLCA(){

    }

    public LCIeLCA(Double valor, int tempo) {
        this.valor = valor;
        this.tempo = tempo;
    }

    @Override
    public Resultado previsaoRetorno() {
        if (tipo.equalsIgnoreCase("LCI")) {
            return simuladorLCI();
        } else if (tipo.equalsIgnoreCase("LCA")) {
            return simuladorLCA();
        } else {
            return null;
        }
    }

    public Resultado simuladorLCI() {
        Double retorno = this.valor;
        Double diferenca= 0.0;
        ArrayList<Double> saldoAtual = new ArrayList<>();
        ArrayList<Double> saldoMensal = new ArrayList<>();
        ArrayList<Double> diferencaMensal = new ArrayList<>();


        for (int i = 0; i < tempo; i++) {
            saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',','.')));

            diferenca = ((retorno * taxaLCI) / 100);
            retorno += diferenca;

            saldoMensal.add(Double.parseDouble(form.format(retorno).replace(',','.')));
            diferencaMensal.add(Double.parseDouble(form.format(diferenca).replace(',','.')));
        }


        Resultado resultado = new Resultado(saldoAtual,diferencaMensal,saldoMensal,this.valor);
        return resultado;
    }

    public Resultado simuladorLCA() {
        Double retorno = this.valor;
        Double diferenca= 0.0;
        ArrayList<Double> saldoAtual = new ArrayList<>();
        ArrayList<Double> saldoMensal = new ArrayList<>();
        ArrayList<Double> diferencaMensal = new ArrayList<>();


        for (int i = 0; i < tempo; i++) {
            saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',','.')));

            diferenca = ((retorno * taxaLCA) / 100);
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
        if(this.tipo.equalsIgnoreCase("lci")) setTaxaLCI(taxa);
        else if(this.tipo.equalsIgnoreCase("lca")) setTaxaLCA(taxa);
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

    public Double getTaxaLCI() {
        return taxaLCI;
    }

    public void setTaxaLCI(Double taxaLCI) {
        this.taxaLCI = taxaLCI;
    }

    public Double getTaxaLCA() {
        return taxaLCA;
    }

    public void setTaxaLCA(Double taxaLCA) {
        this.taxaLCA = taxaLCA;
    }

    @Override
    public void setMensal(String Mensal) {
        this.mensal = mensal;
    }

}
