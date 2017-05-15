package src.java.controller;

/**
 * Created by adrianewey on 15/05/17.
 */

public class ParamHelper {

    private int tempo;
    private Double valor;
    private String tipo;
    private boolean mensal=false;
    private String classe;

    public ParamHelper(){

    }

    public int getTempo() {
        return tempo;
    }

    public void setTempo(int tempo) {
        this.tempo = tempo;
    }

    public Double getValor() {
        return valor;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public boolean isMensal() {
        return mensal;
    }

    public void setMensal(boolean mensal) {
        this.mensal = mensal;
    }

    public String getClasse() {
        return classe;
    }

    public void setClasse(String classe) {
        this.classe = classe;
    }
}
