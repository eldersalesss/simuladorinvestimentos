
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

/**
 * Created by adria on 24/04/2017.
 */
public class InvestimentoTeste {
    public InvestimentoTeste(){

    }

    @Test
    public void testInvestimento(){
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "selic";
        boolean mensal = false;

        Double retorno = 5037.21;

        Investimento inv = new TesouroDireto(valor,tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);

        assertEquals(retorno,inv.previsaoRetorno());

    }


    /**** Com outro tipo ****/
    @Test
    public void testInvestimento_LCI(){
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "lci";
        boolean mensal = false;

        Double retorno = 5046.01;

        Investimento inv = new LCIeLCA(valor,tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);

        assertEquals(retorno,inv.previsaoRetorno());

    }
    
    @Test
    public void testInvestimento_CDB(){
       Double valor = 5000.0;
        int tempo = 1;
        String tipo = "cdb";
        boolean mensal = false; 
        
        Double retorno = 5044.24;
        Investimento inv = new CDBeLC(valor, tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);
        
        assertEquals(retorno,inv.previsaoRetorno());
    }
}
