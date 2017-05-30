package Testes;

import static org.junit.Assert.assertEquals;

import fidape.Sistema.CDBeLC;
import org.junit.Test;

/**
 *
 * @author Bruno/Gabiel
 */
public class testeCDBeLC {

    // teste
    public testeCDBeLC() {
    }

    @Test
    public void testCDB() {
        int tempo = 1; // meses  
        Double valor = 5000.0;
        Double retorno = 5044.24;
        CDBeLC t1 = new CDBeLC(valor, tempo);
        t1.setTipo("cdb");
        t1.setTaxaCDB(0.8848);
        assertEquals(retorno, t1.simularTest());

    }

    @Test
    public void testLC() {
        int tempo = 1; // meses
        Double valor = 5000.0;
        Double retorno = 5043.50;
        CDBeLC t2 = new CDBeLC(valor, tempo);
        t2.setTipo("lc");
        t2.setTaxaLC(0.87);
        assertEquals(retorno, t2.simularTest());
    }

}
