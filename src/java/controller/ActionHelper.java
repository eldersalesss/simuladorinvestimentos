package src.java.controller;

import src.java.Sistema.Investimentos;

/**
 * Created by adrianewey on 15/05/17.
 */
public class ActionHelper {

    public ActionHelper(){

    }

    public void convertInvestimento(Investimentos inv, ParamHelper pam){

        //if(inv.getMensal().equalsIgnoreCase("true")) investimentos.setMensal(true);
        inv.setValor(pam.getValor());
        inv.setTipo(pam.getTipo());
        inv.setTempo(pam.getTempo());

        inv.setTaxa(0.7442);

        System.out.println("\n\n"+inv.getValor());
    }

    public Double caculated(Investimentos investimentos){
        return investimentos.previsaoRetorno();
    }
}
