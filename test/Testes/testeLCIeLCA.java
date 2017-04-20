package Testes;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


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
        Double valor = 5000.0;
        Double retorno = 5044.56;
        LCIeLCA t1 = new LCIeLCA (valor, tempo);
        assertEquals(retorno,t1.simuladorLCA());
    }

}
