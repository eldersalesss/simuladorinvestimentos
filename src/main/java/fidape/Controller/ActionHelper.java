package fidape.Controller;

import fidape.Sistema.Admin;
import fidape.Sistema.Investimentos;
import fidape.Sistema.Resultado;

/**
 * Created by adrianewey on 15/05/17.
 */
public class ActionHelper {
    private Admin admin;

    public ActionHelper(){

    }
    
    public void convertInvestimento(Investimentos inv, ParamHelper pam){


        inv.setValor(pam.getValor());
        inv.setTempo(pam.getTempo());
        inv.setTipo(pam.getTipo());
        inv.setMensal(pam.getMensal());

        Admin admin = new Admin();
        if(pam.getClasse().equalsIgnoreCase("TesouroDireto")) {
            if (pam.getTipo().equalsIgnoreCase("selic")) {
                inv.setTaxa(admin.getTaxas("selic"));
            } else if (pam.getTipo().equalsIgnoreCase("ipca")) {
                inv.setTaxa(admin.getTaxas("ipca"));
            } else if (pam.getTipo().equalsIgnoreCase("prefixado")) {
                inv.setTaxa(admin.getTaxas("prefixado"));
            }else if(pam.getTipo().equalsIgnoreCase("anual.selic")){
                inv.setTaxa(admin.getTaxas("selic"));
            }else if(pam.getTipo().equalsIgnoreCase("anual.ipca")){
                inv.setTaxa(admin.getTaxas("ipca"));
            }else if(pam.getTipo().equalsIgnoreCase("anual.prefixado")){
                inv.setTaxa(admin.getTaxas("prefixado"));
            }
        }
        else if(pam.getClasse().equalsIgnoreCase("LCIeLCA")){
            if (pam.getTipo().equalsIgnoreCase("lci")) {
                inv.setTaxa(admin.getTaxas("lci"));
            } else if (pam.getTipo().equalsIgnoreCase("lca")) {
                inv.setTaxa(admin.getTaxas("lca"));
            }else if(pam.getTipo().equalsIgnoreCase("anual.lci")){
                inv.setTaxa(admin.getTaxas("lci"));
            }else if(pam.getTipo().equalsIgnoreCase("anual.lca")){
                inv.setTaxa(admin.getTaxas("lca"));
            }
        }
        else if(pam.getClasse().equalsIgnoreCase("CDBeLC")){
            if (pam.getTipo().equalsIgnoreCase("cdb")) {
                inv.setTaxa(admin.getTaxas("cdb"));
            } else if (pam.getTipo().equalsIgnoreCase("lc")) {
                inv.setTaxa(admin.getTaxas("lc"));
            }else if(pam.getTipo().equalsIgnoreCase("anual.cdb")){
                inv.setTaxa(admin.getTaxas("cdb"));
            }else if(pam.getTipo().equalsIgnoreCase("anual.lc")){
                inv.setTaxa(admin.getTaxas("lc"));
            }
        }


    }

    public Resultado caculated(Investimentos investimentos){
        return investimentos.previsaoRetorno();
    }
}
