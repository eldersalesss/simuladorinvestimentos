package Testes;


import Classes.LCIeLCA;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Elder
 */
public class testeLCIeLCA {
    
    public testeLCIeLCA() {
    }
    
    @Test
    public void testLCA(){
        int tempo = 1;
        // taxa = 0,008912
        Double valor = 5000.0;
        Double retorno = 5044.56;
        LCIeLCA l1 = new LCIeLCA (valor, tempo);
        assertEquals(retorno,l1.simuladorLCA());
    }
    
     @Test
    public void testLCI(){
        int tempo = 1;
        // taxa = 0,009202
        Double valor = 5000.0;
        Double retorno = 5046.01;
        LCIeLCA l2 = new LCIeLCA (valor, tempo);
        assertEquals(retorno,l2.simuladorLCI());
    }

}
