package Testes;

import org.junit.Assert;
import org.junit.Test;

/**
 * Created by adrianewey on 22/04/17.
 */
public class testeTesouro {

    public testeTesouro(){

    }

    @Test
    public void testSelic(){
        int tempo = 1;
        Double valor = 5000.0;
        Double  retorno = 5037.21;

        TesouroDireto tesouro = new TesouroDireto(valor,tempo);
        Assert.assertEquals(retorno,tesouro.simuladorSelic());

    }

    @Test
    public void testIPCA(){
        int tempo = 1;
        Double valor = 5000.0;
        Double retorno = 5030.81;

        TesouroDireto tesouro = new TesouroDireto(valor,tempo);
        Assert.assertEquals(retorno, tesouro.simuladorIPCA());
    }

    @Test
    public void testPrefixado(){
        int tempo = 1;
        Double valor = 5000.0;
        Double retorno = 5031.67;

        TesouroDireto tesouro = new TesouroDireto(valor,tempo);
        Assert.assertEquals(retorno, tesouro.simuladorPrefixado());
    }



    /*------Testes com entradas Mensais------*/

    @Test
    public void testSelicMensal(){
        int tempo = 6;
        Double valor = 5000.0; //Inserido mensalmente durante o periodo de tempo. 6 meses = 6 vezes.
        Double retorno = 30793.94;

        TesouroDireto tesouro = new TesouroDireto(valor,tempo);
        Assert.assertEquals(retorno, tesouro.simulador_MensalSelic());
    }

    @Test
    public void testIPCA(){
        int tempo = 6;
        Double valor = 5000.0; //Inserido mensalmente durante o periodo de tempo. 6 meses = 6 vezes.
        Double retorno = 30655.67;

        TesouroDireto tesouro = new TesouroDireto(valor,tempo);
        Assert.assertEquals(retorno, tesouro.simulador_MensalIPCA());
    }

    @Test
    public void testPrefixado(){
        int tempo = 6;
        Double valor = 5000.0; //Inserido mensalmente durante o periodo de tempo. 6 meses = 6 vezes.
        Double retorno = 30674.17;

        TesouroDireto tesouro = new TesouroDireto(valor,tempo);
        Assert.assertEquals(retorno, tesouro.simulador_MensalPrefixado());
    }

}
