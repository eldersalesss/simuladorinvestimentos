package Testes;

import fidape.Sistema.TesouroDireto;
import org.junit.Assert;
import org.junit.Test;


/**
 * Created by adrianewey on 22/04/17.
 */
public class testeTesouro {

    public testeTesouro() {

    }

    @Test
    public void testSelic() {
        int tempo = 1;
        Double valor = 5000.0;
        Double retorno = 5037.21;

        TesouroDireto tesouro = new TesouroDireto(valor, tempo);
        tesouro.setTipo("selic");
        tesouro.setTaxaSELIC(0.7442);
        Assert.assertEquals(retorno, tesouro.simularTest());

    }

    @Test
    public void testIPCA() {
        int tempo = 1;
        Double valor = 5000.0;
        Double retorno = 5030.81;

        TesouroDireto tesouro = new TesouroDireto(valor, tempo);
        tesouro.setTipo("ipca");
        tesouro.setTaxaIPCA(0.6162);
        Assert.assertEquals(retorno, tesouro.simularTest());
    }

    @Test
    public void testPrefixado() {
        int tempo = 1;
        Double valor = 5000.0;
        Double retorno = 5031.67;

        TesouroDireto tesouro = new TesouroDireto(valor, tempo);
        tesouro.setTipo("prefixado");
        tesouro.setTaxaPrefixado(0.6334);
        Assert.assertEquals(retorno, tesouro.simularTest());
    }

    /*------Testes com entradas Mensais------*/
    @Test
    public void testSelicMensal() {
        int tempo = 3;
        Double valor = 5000.0; //Inserido mensalmente durante o periodo de tempo. 6 meses = 6 vezes.
        Double retorno = 15224.37; // arredondou

        TesouroDireto tesouro = new TesouroDireto(valor, tempo);
        tesouro.setTipo("selicMensal");
        tesouro.setTaxaSELIC(0.7442);

        Assert.assertEquals(retorno, tesouro.simularTest());
    }

    // Mudei o nome do método porque estava igual ao do primeiro método do IPCA
    @Test
    public void testIPCAMensal() {
        int tempo = 3;
        Double valor = 5000.0; //Inserido mensalmente durante o periodo de tempo. 6 meses = 6 vezes.
        Double retorno = 15185.62;
        
        TesouroDireto tesouro = new TesouroDireto(valor, tempo);
        tesouro.setTipo("ipcaMensal");
        tesouro.setTaxaIPCA(0.6162);
        Assert.assertEquals(retorno, tesouro.simularTest());
    }

    // Mudei o nome do método porque estava igual ao do primeiro método do Prefixo
    @Test
    public void testPrefixadoMensal() {
        int tempo = 3;
        Double valor = 5000.0; //Inserido mensalmente durante o periodo de tempo. 6 meses = 6 vezes.
        Double retorno = 15190.82;

        TesouroDireto tesouro = new TesouroDireto(valor, tempo);
        tesouro.setTipo("prefixadoMensal");
        tesouro.setTaxaPrefixado(0.6334);
        Assert.assertEquals(retorno, tesouro.simularTest());
    }

}
