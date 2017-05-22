package src.java.controller;

import src.java.Sistema.Investimentos;
import src.java.Sistema.Resultado;

/**
 * Created by adrianewey on 15/05/17.
 */
public class ActionHelper {

    public ActionHelper(){

    }

    public void convertInvestimento(Investimentos inv, ParamHelper pam){

       
        inv.setValor(pam.getValor());
        inv.setTipo(pam.getTipo());
        inv.setTempo(pam.getTempo());
        inv.setMensal(pam.getMensal());

        /**Orgainzar as taxas depois aqui**/
        inv.setTaxa(0.7442);

        
    }

    public Resultado caculated(Investimentos investimentos){
        return investimentos.previsaoRetorno();
    }
}
