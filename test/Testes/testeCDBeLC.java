package Testes;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

/**
 *
 * @author Gabiel Mendonça
 */
public class testeCDBeLC {

    public testeCDBeLC() {
    }

    @Test
    public void testCDB() {
        int tempo = 1;
        Double valor = 5000.0;
        Double retorno = 5044.24;
        CDBeLC t1 = new CDBeLC(valor, tempo);
        assertEquals(retorno, t1.simuladorLCA());
    }

    @Test
    public void testLC() {
        int tempo = 1;
        Double valor = 5000.0;
        Double retorno = 5043.50;
        CDBeLC t2 = new CDBeLC(valor, tempo);
        assertEquals(retorno, t1.simuladorLCA());
    }

}
