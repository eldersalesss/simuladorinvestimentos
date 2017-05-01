package Testes;


import Classes.Investimento;
import org.junit.Test;


import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

/**
 * Created by adria on 24/04/2017.
 */
public class testeInvestimento {
    public testeInvestimento(){

    }

    @Test
    public void testInvestimento(){
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "selic";
        boolean mensal = false;

        Double retorno = 5037.21;

        Investimento TesouroDireto = new Investimento(valor,tipo);
        TesouroDireto.setMensal(mensal);
        TesouroDireto.setTipo(tipo);

        assertEquals(retorno,TesouroDireto.previsaoRetornoTesouroDireto());

    }


    /**** Com outro tipo ****/
     @Test
    public void testInvestimento_LCI(){
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "lci";
        boolean mensal = false;

        Double retorno = 5046.01;

        Investimento LCIeLCA = new Investimento(valor,tipo);
        LCIeLCA.setMensal(mensal);
        LCIeLCA.setTipo(tipo);

        assertEquals(retorno,LCIeLCA.previsaoRetornoLCIeLCA());

    }
}
