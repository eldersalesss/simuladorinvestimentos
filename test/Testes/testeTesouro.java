package Testes;


import Sistema.TesouroDireto;
import org.junit.Assert;
import org.junit.Test;

/**
 * Created by adrianewey on 22/04/17.
 */
public class testeTesouro{

    public testeTesouro(){

    }

    @Test
    public void testSelic(){
        int tempo = 1;
        Double valor = 5000.0;
        Double  retorno = 5037.21;

        TesouroDireto tesouro1 = new TesouroDireto(valor,tempo);
        Assert.assertEquals(retorno,tesouro1.simuladorSelic());

    }

    @Test
    public void testIPCA(){
        int tempo = 1;
        Double valor = 5000.0;
        Double retorno = 5030.81;

        TesouroDireto tesouro2 = new TesouroDireto(valor,tempo);
        Assert.assertEquals(retorno, tesouro2.simuladorIPCA());
    }

    @Test
    public void testPrefixado(){
        int tempo = 1;
        Double valor = 5000.0;
        Double retorno = 5031.67;

        TesouroDireto tesouro3 = new TesouroDireto(valor,tempo);
        Assert.assertEquals(retorno, tesouro3.simuladorPrefixado());
    }


}
