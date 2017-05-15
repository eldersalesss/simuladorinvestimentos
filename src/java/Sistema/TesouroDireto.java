/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src.java.Sistema;

/**
 *
 * @author Elder
 */
public class TesouroDireto extends Investimentos {

    private Double taxaSELIC;
    private Double taxaIPCA;
    private Double taxaPrefixado;

    public TesouroDireto(){

    }
    public TesouroDireto(Double valor, int tempo) {
        this.valor = valor;
        this.tempo = tempo;
    }

    @Override
    public Double previsaoRetorno() {
        if (!mensal) {
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

    public Double simuladorSelic() {
        Double retorno = this.valor;

        for (int i = 0; i < tempo; i++) {
            retorno += ((retorno * taxaSELIC) / 100);
        }

        return retorno;
    }

    public Double simuladorIPCA() {
        Double retorno = this.valor;

        for (int i = 0; i < tempo; i++) {
            retorno += ((retorno * taxaIPCA) / 100);
        }

        return retorno;
    }

    public Double simuladorPrefixado() {
        Double retorno = this.valor;

        for (int i = 0; i < tempo; i++) {
            retorno += ((retorno * taxaPrefixado) / 100);
        }

        return retorno;
    }

    public Double simulador_MensalIPCA() {
        Double retorno = 0.0;

        for (int i = 0; i < tempo; i++) {
            retorno += this.valor;
            retorno += ((retorno * taxaIPCA) / 100);
        }

        return retorno;
    }

    public Double simulador_MensalPrefixado() {
        Double retorno = 0.0;

        for (int i = 0; i < tempo; i++) {
            retorno += this.valor;
            retorno += ((retorno * taxaPrefixado) / 100);
        }

        return retorno;
    }

    public Double simulador_MensalSelic() {
        Double retorno = 0.0;

        for (int i = 0; i < tempo; i++) {
            retorno += this.valor;
            retorno += ((retorno * taxaSELIC) / 100);
        }

        return retorno;
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

    public void setMensal(boolean mensal) {
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
