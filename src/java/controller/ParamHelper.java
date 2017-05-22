package src.java.controller;

/**
 * Created by adrianewey on 15/05/17.
 */

public class ParamHelper {

    private Double valor;
    private String tipo;
    private String mensal="false";
    private String classe;
    private int tempoAno;
    private int tempoMes;


    public ParamHelper(){

    }

    public int getTempo() {
        if(tempoAno > 0 && tempoAno != 0) {
            return tempoAno * 12;
        }

        else return tempoMes;
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

    public String getMensal() {
        return mensal;
    }

    public void setMensal(String mensal) {
        this.mensal = mensal;
    }

    public String getClasse() {
        return classe;
    }

    public void setClasse(String classe) {
        this.classe = classe;
    }
    
    public int getTempoAno() {
        return tempoAno;
    }

    public void setTempoAno(int tempoAno) {
        this.tempoAno = tempoAno;
    }

    public int getTempoMes() {
        return tempoMes;
    }

    public void setTempoMes(int tempoMes) {
        this.tempoMes = tempoMes;
    }
}
