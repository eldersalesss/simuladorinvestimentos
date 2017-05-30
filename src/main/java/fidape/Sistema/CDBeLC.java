package fidape.Sistema;

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
        if(tipo.startsWith("anual.")){
            this.anual = "true";

            if (tipo.equalsIgnoreCase("anual.CDB")) {
                return simuladorCDB();
            } else if (tipo.equalsIgnoreCase("anual.LC")) {
                return simuladorLC();
            }
        }else {

            if (tipo.equalsIgnoreCase("CDB")) {
                return simuladorCDB();
            } else if (tipo.equalsIgnoreCase("LC")) {
                return simuladorLC();
            }
        }

        return null;
    }

    public Resultado simuladorCDB() {
        Double retorno = this.valor;
        Double diferenca= 0.0;
        ArrayList<Double> saldoAtual = new ArrayList<>();
        ArrayList<Double> saldoMensal = new ArrayList<>();
        ArrayList<Double> diferencaMensal = new ArrayList<>();


        if(this.anual.equalsIgnoreCase("true")){
            for (int i = 0; i < tempo; i++) {
                if(i%12 == 0) saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',','.')));

                diferenca = ((retorno * taxaCDB) / 100);
                retorno += diferenca;

                if(i%12 == 0) {
                    saldoMensal.add(Double.parseDouble(form.format(retorno).replace(',', '.')));
                    diferencaMensal.add(Double.parseDouble(form.format(diferenca).replace(',', '.')));
                }
            }
        }else {

            for (int i = 0; i < tempo; i++) {
                saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',', '.')));

                diferenca = ((retorno * taxaCDB) / 100);
                retorno += diferenca;

                saldoMensal.add(Double.parseDouble(form.format(retorno).replace(',', '.')));
                diferencaMensal.add(Double.parseDouble(form.format(diferenca).replace(',', '.')));
            }
        }


        Resultado resultado = new Resultado(saldoAtual,diferencaMensal,saldoMensal,this.valor);
        resultado.setAnual(this.anual);
        return resultado;
    }

    public Resultado simuladorLC() {
        Double retorno = this.valor;
        Double diferenca= 0.0;
        ArrayList<Double> saldoAtual = new ArrayList<>();
        ArrayList<Double> saldoMensal = new ArrayList<>();
        ArrayList<Double> diferencaMensal = new ArrayList<>();


        if(this.anual.equalsIgnoreCase("true")){
            for (int i = 0; i < tempo; i++) {
                if(i%12 == 0) saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',','.')));

                diferenca = ((retorno * taxaLC) / 100);
                retorno += diferenca;

                if(i%12 == 0) {
                    saldoMensal.add(Double.parseDouble(form.format(retorno).replace(',', '.')));
                    diferencaMensal.add(Double.parseDouble(form.format(diferenca).replace(',', '.')));
                }
            }
        }else {

            for (int i = 0; i < tempo; i++) {
                saldoAtual.add(Double.parseDouble(form.format(retorno).replace(',', '.')));

                diferenca = ((retorno * taxaLC) / 100);
                retorno += diferenca;

                saldoMensal.add(Double.parseDouble(form.format(retorno).replace(',', '.')));
                diferencaMensal.add(Double.parseDouble(form.format(diferenca).replace(',', '.')));
            }
        }



        Resultado resultado = new Resultado(saldoAtual,diferencaMensal,saldoMensal,this.valor);
        resultado.setAnual(this.anual);
        return resultado;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    @Override
    public void setTaxa(Double taxa) {
        if(this.tipo.equalsIgnoreCase("cdb") || tipo.equalsIgnoreCase("anual.cdb")) setTaxaCDB(taxa);
        else if(this.tipo.equalsIgnoreCase("lc") || tipo.equalsIgnoreCase("anual.lc")) setTaxaLC(taxa);
    }

    public Double simularTest(){
        if(tipo.equalsIgnoreCase("cdb")) return simuladorCDB().getResult();
        else if(tipo.equalsIgnoreCase("lc")) return simuladorLC().getResult();

        return null;
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
