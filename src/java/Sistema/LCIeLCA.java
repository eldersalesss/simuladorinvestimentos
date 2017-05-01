
package javaapplication1;

/**
 *
 * @author Thauan
 */
public class LCIeLCA extends Investimentos{
    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
    private Double taxaLCI = 0.9202;//%
    private Double taxaLCA = 0.8912;//%
    private String tipo;
    private double valor;
    private int tempo;
    
    
    public LCIeLCA(Double valor, int tempo) {
        this.valor = valor;
        this.tempo = tempo;
        this.tipo = tipo;
    }

    @Override
    public Double previsaoRetorno() {
            if (tipo.equalsIgnoreCase("LCI")) return simuladorLCI();
            else if (tipo.equalsIgnoreCase("LCA")) return simuladorLCA();
            else{
                return null;
            }
    }


    public Double simuladorLCI(){
        Double retorno = this.valor;

        for(int i=0;i < tempo;i++){
            retorno += ((retorno * taxaLCI) / 100);
        }

        return retorno;
    }

    public Double simuladorLCA(){
        Double retorno = this.valor;

        for(int i=0;i < tempo;i++){
            retorno += ((retorno * taxaLCA) / 100);
        }

        return retorno;
    }



    public void setTipo(String tipo){
        this.tipo = tipo;
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


}
}
