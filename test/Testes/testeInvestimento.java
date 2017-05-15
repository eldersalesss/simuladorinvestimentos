/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test.Testes;

import src.java.Sistema.*;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author asus
 */
public class testeInvestimento {

    public testeInvestimento() {

    }

    @Test
    public void testInvestimentoSELIC() {
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "SELIC";
        boolean mensal = false;
        Double retorno = 5037.21;
        Investimentos inv = new TesouroDireto(valor, tempo);

        inv.setMensal(mensal);
        inv.setTipo(tipo);
        inv.setTaxa(0.7442);
        assertEquals(retorno, inv.previsaoRetorno());
    }

    @Test
    public void testInvestimentoIPCA() {
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "IPCA";
        boolean mensal = false;
        Double retorno = 5030.81;
        Investimentos inv = new TesouroDireto(valor, tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);
        assertEquals(retorno, inv.previsaoRetorno());
    }

    @Test
    public void testInvestimentoPREFIXADO() {
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "PREFIXADO";
        boolean mensal = false;
        Double retorno = 5031.67;
        Investimentos inv = new TesouroDireto(valor, tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);
        assertEquals(retorno, inv.previsaoRetorno());
    }

    @Test
    public void testInvestimento_LCI() {
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "LCI";
        boolean mensal = false;
        Double retorno = 5046.01;
        Investimentos inv = new LCIeLCA(valor, tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);
        assertEquals(retorno, inv.previsaoRetorno());
    }

    @Test
    public void testInvestimento_LCA() {
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "LCA";
        boolean mensal = false;
        Double retorno = 5044.56;
        Investimentos inv = new LCIeLCA(valor, tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);
        assertEquals(retorno, inv.previsaoRetorno());
    }

    @Test
    public void testInvestimento_CDB() {
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "CDB";
        boolean mensal = false;
        Double retorno = 5044.24;
        Investimentos inv = new CDBeLC(valor, tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);
        assertEquals(retorno, inv.previsaoRetorno());
    }

    @Test
    public void testInvestimento_LC() {
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "LC";
        boolean mensal = false;
        Double retorno = 5043.50;
        Investimentos inv = new CDBeLC(valor, tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);
        assertEquals(retorno, inv.previsaoRetorno());
    }

}
