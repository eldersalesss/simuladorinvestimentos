package fidape.Controller;

import fidape.Sistema.Investimentos;
import fidape.Sistema.Resultado;

/**
 * Created by adrianewey on 15/05/17.
 */
public class ActionHelper {

    public ActionHelper(){

    }

    public void convertInvestimento(Investimentos inv, ParamHelper pam){


        inv.setValor(pam.getValor());
        inv.setTempo(pam.getTempo());
        inv.setTipo(pam.getTipo());
        inv.setMensal(pam.getMensal());

        if(pam.getClasse().equalsIgnoreCase("TesouroDireto")) {
            if (pam.getTipo().equalsIgnoreCase("selic")) {
                inv.setTaxa(0.7442);
            } else if (pam.getTipo().equalsIgnoreCase("ipca")) {
                inv.setTaxa(0.6162);
            } else if (pam.getTipo().equalsIgnoreCase("prefixado")) {
                inv.setTaxa(0.6334);
            }
        }
        else if(pam.getClasse().equalsIgnoreCase("LCIeLCA")){
            if (pam.getTipo().equalsIgnoreCase("lci")) {
                inv.setTaxa(0.9202);
            } else if (pam.getTipo().equalsIgnoreCase("lca")) {
                inv.setTaxa(0.8912);
            }
        }
        else if(pam.getClasse().equalsIgnoreCase("CDBeLC")){
            if (pam.getTipo().equalsIgnoreCase("cdb")) {
                inv.setTaxa(0.8848);
            } else if (pam.getTipo().equalsIgnoreCase("lc")) {
                inv.setTaxa(0.87);
            }
        }


    }

    public Resultado caculated(Investimentos investimentos){
        return investimentos.previsaoRetorno();
    }
}
