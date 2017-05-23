package Testes;

import src.java.Sistema.CDBeLC;
import static org.junit.Assert.assertEquals;
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
        t1.setTaxaCDB(0.8848);
        assertEquals(retorno, t1.simuladorCDB());

    }

    @Test
    public void testLC() {
        int tempo = 1; // meses
        Double valor = 5000.0;
        Double retorno = 5043.50;
        CDBeLC t2 = new CDBeLC(valor, tempo);
        t2.setTaxaLC(0.87);
        assertEquals(retorno, t2.simuladorLC());
    }

}
