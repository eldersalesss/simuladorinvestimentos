package src.java.Sistema;

import java.util.ArrayList;

/**
 * Created by adrianewey on 21/05/17.
 */
public class Resultado {
    public Resultado(){

    }

    public Resultado(ArrayList<Double> saldoAtual,ArrayList<Double> diferencaMensal,
                     ArrayList<Double> saldoMensal,Double adicionado)
    {
        this.saldoAtual = saldoAtual;
        this.diferencaMensal = diferencaMensal;
        this.saldoMensal = saldoMensal;
        this.adicionado = adicionado;
    }

    private Double adicionado;
    private ArrayList<Double> saldoMensal;
    private ArrayList<Double> diferencaMensal;
    private ArrayList<Double> saldoAtual;
    private String mensal="false";

    public ArrayList<Double> getSaldoMensal() {
        return saldoMensal;
    }

    public void setSaldoMensal(ArrayList<Double> saldoMensal) {
        this.saldoMensal = saldoMensal;
    }

    public ArrayList<Double> getDiferencaMensal() {
        return diferencaMensal;
    }

    public void setDiferencaMensal(ArrayList<Double> diferencaMensal) {
        this.diferencaMensal = diferencaMensal;
    }

    public ArrayList<Double> getSaldoAtual() {
        return saldoAtual;
    }

    public void setSaldoAtual(ArrayList<Double> saldoAtual) {
        this.saldoAtual = saldoAtual;
    }

    public Double getAdicionado() {
        return adicionado;
    }

    public void setAdicionado(Double adicionado) {
        this.adicionado = adicionado;
    }

    public String getMensal() {
        return mensal;
    }

    public void setMensal(String mensal) {
        this.mensal = mensal;
    }
}
