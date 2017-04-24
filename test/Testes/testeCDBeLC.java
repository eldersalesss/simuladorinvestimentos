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
        int tempo = 1; // meses //
//        int tempo = 2; // meses //
        Double valor = 5000.0;
        Double retorno = 5044.24;
//        Double retorno = 5088.99;
        CDBeLC t1 = new CDBeLC(valor, tempo);
        assertEquals(retorno, t1.simuladorCDB());
    }

    @Test
    public void testLC() {
        int tempo = 1; // meses // 
//        int tempo = 2 // meses //
        Double valor = 5000.0;
        Double retorno = 5043.50;
//        Double retorno = 5087.48;
        CDBeLC t2 = new CDBeLC(valor, tempo);
        assertEquals(retorno, t2.simuladorLC());
    }

}
