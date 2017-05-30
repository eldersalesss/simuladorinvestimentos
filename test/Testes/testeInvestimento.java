/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Testes;


import fidape.Sistema.CDBeLC;
import fidape.Sistema.Investimentos;
import fidape.Sistema.LCIeLCA;
import fidape.Sistema.TesouroDireto;
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
        String mensal = "false";
        Double retorno = 5037.21;
        Investimentos inv = new TesouroDireto(valor, tempo);

        inv.setMensal(mensal);
        inv.setTipo(tipo);
        inv.setTaxa(0.7442);
        assertEquals(retorno, inv.simularTest());
    }

    @Test
    public void testInvestimentoIPCA() {
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "IPCA";
        String mensal = "false";
        Double retorno = 5030.81;
        Investimentos inv = new TesouroDireto(valor, tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);
        inv.setTaxa(0.6162);
        assertEquals(retorno, inv.simularTest());
    }

    @Test
    public void testInvestimentoPREFIXADO() {
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "PREFIXADO";
        String mensal = "false";
        Double retorno = 5031.67;
        Investimentos inv = new TesouroDireto(valor, tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);
        inv.setTaxa(0.6334);
        assertEquals(retorno, inv.simularTest());
    }

    @Test
    public void testInvestimento_LCI() {
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "LCI";
        String mensal = "false";
        Double retorno = 5046.01;
        Investimentos inv = new LCIeLCA(valor, tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);
        inv.setTaxa(0.9202);
        assertEquals(retorno, inv.simularTest());
    }

    @Test
    public void testInvestimento_LCA() {
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "LCA";
        String mensal = "false";
        Double retorno = 5044.56;
        Investimentos inv = new LCIeLCA(valor, tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);
        inv.setTaxa(0.8912);
        assertEquals(retorno, inv.simularTest());
    }

    @Test
    public void testInvestimento_CDB() {
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "CDB";
        String mensal = "false";
        Double retorno = 5044.24;
        Investimentos inv = new CDBeLC(valor, tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);
        inv.setTaxa(0.8848);
        assertEquals(retorno, inv.simularTest());
    }

    @Test
    public void testInvestimento_LC() {
        Double valor = 5000.0;
        int tempo = 1;
        String tipo = "LC";
        String mensal = "false";
        Double retorno = 5043.50;
        Investimentos inv = new CDBeLC(valor, tempo);
        inv.setMensal(mensal);
        inv.setTipo(tipo);
        inv.setTaxa(0.87);
        assertEquals(retorno, inv.simularTest());
    }

}
