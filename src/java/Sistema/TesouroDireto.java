/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.java.Sistema;

import java.text.DecimalFormat;
import java.util.ArrayList;

/**
 *
 * @author Elder
 */
public class TesouroDireto extends Investimentos {

    private Double taxaSELIC;
    private Double taxaIPCA;
    private Double taxaPrefixado;
    private DecimalFormat form = new DecimalFormat("#.##");

    public TesouroDireto(){

    }
    public TesouroDireto(Double valor, int tempo) {
        this.valor = valor;
        this.tempo = tempo;
    }

    @Override
    public Resultado previsaoRetorno() {
        if (this.mensal.equalsIgnoreCase("false")) {
            if (tipo.equalsIgnoreCase("selic")) {
                return simuladorSelic();
            } else if (tipo.equalsIgnoreCase("ipca")) {
                return simuladorIPCA();
            } else if (tipo.equalsIgnoreCase("prefixado")) {
                return simuladorPrefixado();
            }

        } else {
            if (tipo.equalsIgnoreCase("selic")) {
                return simulador_MensalSelic();
            } else if (tipo.equalsIgnoreCase("ipca")) {
                return simulador_MensalIPCA();
            } else if (tipo.equalsIgnoreCase("prefixado")) {
                return simulador_MensalPrefixado();
            }
        }
        return null;
    }

    public Resultado simuladorSelic() {
        Double retorno = this.valor;
        Double diferenca= 0.0;
        ArrayList<Double> saldoAtual = new ArrayList<>();
        ArrayList<Double> saldoMensal = new ArrayList<>();
        ArrayList<Double> diferencaMensal = new ArrayList<>();


        for (int i = 0; i < tempo; i++) {
            saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',','.')));

            diferenca = ((retorno * taxaSELIC) / 100);
            retorno += diferenca;

            saldoMensal.add(Double.parseDouble(form.format(retorno).replace(',','.')));
            diferencaMensal.add(Double.parseDouble(form.format(diferenca).replace(',','.')));
        }


        Resultado resultado = new Resultado(saldoAtual,diferencaMensal,saldoMensal,this.valor);
        return resultado;
    }

    public Resultado simuladorIPCA() {
        Double retorno = this.valor;
        Double diferenca= 0.0;
        ArrayList<Double> saldoAtual = new ArrayList<>();
        ArrayList<Double> saldoMensal = new ArrayList<>();
        ArrayList<Double> diferencaMensal = new ArrayList<>();

        for (int i = 0; i < tempo; i++) {
            saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',','.')));

            diferenca = ((retorno * taxaIPCA) / 100);
            retorno += diferenca;

            saldoMensal.add(Double.parseDouble(form.format(retorno).replace(',','.')));
            diferencaMensal.add(Double.parseDouble(form.format(diferenca).replace(',','.')));
        }

        Resultado resultado = new Resultado(saldoAtual,diferencaMensal,saldoMensal,this.valor);
        return resultado;
    }

    public Resultado simuladorPrefixado() {
        Double retorno = this.valor;
        Double diferenca= 0.0;
        ArrayList<Double> saldoAtual = new ArrayList<>();
        ArrayList<Double> saldoMensal = new ArrayList<>();
        ArrayList<Double> diferencaMensal = new ArrayList<>();


        for (int i = 0; i < tempo; i++) {
            saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',','.')));

            diferenca = ((retorno * taxaPrefixado) / 100);
            retorno += diferenca;

            saldoMensal.add(Double.parseDouble(form.format(retorno).replace(',','.')));
            diferencaMensal.add(Double.parseDouble(form.format(diferenca).replace(',','.')));
        }

        Resultado resultado = new Resultado(saldoAtual,diferencaMensal,saldoMensal,this.valor);
        return resultado;
    }

    public Resultado simulador_MensalIPCA() {
        Double retorno = 0.0;
        Double diferenca= 0.0;
        ArrayList<Double> saldoAtual = new ArrayList<>();
        ArrayList<Double> saldoMensal = new ArrayList<>();
        ArrayList<Double> diferencaMensal = new ArrayList<>();

        for (int i = 0; i < tempo; i++) {
            retorno += this.valor;
            saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',','.')));
            diferenca = ((retorno * taxaIPCA) / 100);
            retorno += diferenca;

            saldoMensal.add(Double.parseDouble(form.format(retorno).replace(',','.')));
            diferencaMensal.add(Double.parseDouble(form.format(diferenca).replace(',','.')));
        }

        Resultado resultado = new Resultado(saldoAtual,diferencaMensal,saldoMensal,this.valor);
        resultado.setMensal("true");
        return resultado;
    }

    public Resultado simulador_MensalPrefixado() {
        Double retorno = 0.0;
        Double diferenca= 0.0;
        ArrayList<Double> saldoAtual = new ArrayList<>();
        ArrayList<Double> saldoMensal = new ArrayList<>();
        ArrayList<Double> diferencaMensal = new ArrayList<>();

        for (int i = 0; i < tempo; i++) {
            retorno += this.valor;
            saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',','.')));
            diferenca = ((retorno * taxaPrefixado) / 100);
            retorno += diferenca;

            saldoMensal.add(Double.parseDouble(form.format(retorno).replace(',','.')));
            diferencaMensal.add(Double.parseDouble(form.format(diferenca).replace(',','.')));
        }

        Resultado resultado = new Resultado(saldoAtual,diferencaMensal,saldoMensal,this.valor);
        resultado.setMensal("true");
        return resultado;
    }

    public Resultado simulador_MensalSelic() {
        Double retorno = 0.0;
        Double diferenca= 0.0;
        ArrayList<Double> saldoAtual = new ArrayList<>();
        ArrayList<Double> saldoMensal = new ArrayList<>();
        ArrayList<Double> diferencaMensal = new ArrayList<>();

        for (int i = 0; i < tempo; i++) {
            retorno += this.valor;
            saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',','.')));
            diferenca = ((retorno * taxaSELIC) / 100);
            retorno += diferenca;

            saldoMensal.add(Double.parseDouble(form.format(retorno).replace(',','.')));
            diferencaMensal.add(Double.parseDouble(form.format(diferenca).replace(',','.')));
        }

        Resultado resultado = new Resultado(saldoAtual,diferencaMensal,saldoMensal,this.valor);
        resultado.setMensal("true");
        return resultado;
    }

    public void setTaxa(Double taxa){
        if(tipo.equalsIgnoreCase("selic")) setTaxaSELIC(taxa);
        else if(tipo.equalsIgnoreCase("ipca")) setTaxaIPCA(taxa);
        else if(tipo.equalsIgnoreCase("prefixado")) setTaxaPrefixado(taxa);
    }

    @Override
    public void setValor(Double valor) {
        this.valor = valor;
    }

    @Override
    public void setTempo(int tempo) {
        this.tempo = tempo;
    }


    public void setMensal(String mensal) {
        this.mensal = mensal;
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

    public Double getTaxaSELIC() {
        return taxaSELIC;
    }

    public void setTaxaSELIC(Double taxaSELIC) {
        this.taxaSELIC = taxaSELIC;
    }

    public Double getTaxaIPCA() {
        return taxaIPCA;
    }

    public void setTaxaIPCA(Double taxaIPCA) {
        this.taxaIPCA = taxaIPCA;
    }

    public Double getTaxaPrefixado() {
        return taxaPrefixado;
    }

    public void setTaxaPrefixado(Double taxaPrefixado) {
        this.taxaPrefixado = taxaPrefixado;
    }

}
