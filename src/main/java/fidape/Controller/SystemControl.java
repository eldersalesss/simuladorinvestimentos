package fidape.Controller;


import fidape.Sistema.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import fidape.Sistema.Investimentos;
import fidape.Sistema.Resultado;

/**
 * Created by adrianewey on 15/05/17.
 */
@Controller
public class SystemControl{
    private static Resultado resultado;
    
    @RequestMapping("index")
    public String indexReturn(){
        return "main";
    }



    @RequestMapping("calcular")
    public
    String identificarClasse(ParamHelper paramHelper,Model model){
        System.out.println(paramHelper.getClasse());

        String nomeDaClasse = "fidape.Sistema." + paramHelper.getClasse();

        System.out.println("\n"+nomeDaClasse);
        try {

            Class created = Class.forName(nomeDaClasse);
            Investimentos investimentos = (Investimentos) created.newInstance();

            ActionHelper actionHelper = new ActionHelper();
            actionHelper.convertInvestimento(investimentos,paramHelper);


            resultado = actionHelper.caculated(investimentos);

            model.addAttribute("resultado",resultado.getSaldoMensal());

            return "forms/resultado";

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        }

        return null;
    }


    @RequestMapping("doChart")
    public String doChart(Model model){
        model.addAttribute("saldoMensal",resultado.getSaldoMensal());
        model.addAttribute("adicionado",resultado.getAdicionado());
        model.addAttribute("mensal",resultado.getMensal());
        model.addAttribute("saldoAtual",resultado.getSaldoAtual());
        model.addAttribute("diferenca",resultado.getDiferencaMensal());
        model.addAttribute("anual",resultado.getAnual());
        return "chart";
    }

    @RequestMapping("doTable")
    public String doTable(Model model){
        model.addAttribute("saldoMensal",resultado.getSaldoMensal());
        model.addAttribute("adicionado",resultado.getAdicionado());
        model.addAttribute("mensal",resultado.getMensal());
        model.addAttribute("saldoAtual",resultado.getSaldoAtual());
        model.addAttribute("diferenca",resultado.getDiferencaMensal());
        model.addAttribute("anual",resultado.getAnual());
        return "table";
    }

    @RequestMapping("doTableDetail")
    public String doTableDetail(Model model){
        model.addAttribute("saldoMensal",resultado.getSaldoMensal());
        model.addAttribute("adicionado",resultado.getAdicionado());
        model.addAttribute("mensal",resultado.getMensal());
        model.addAttribute("saldoAtual",resultado.getSaldoAtual());
        model.addAttribute("diferenca",resultado.getDiferencaMensal());
        model.addAttribute("anual",resultado.getAnual());
        return "tableDetalhada";
    }

    @RequestMapping("showAdmin")
    public String showAdmin(Model model){
        Admin admin = new Admin();
        System.out.println("tt: "+admin.getTaxas("selic"));
        model.addAttribute("selicValue",admin.getTaxas("selic"));
        model.addAttribute("ipcaValue",admin.getTaxas("ipca"));
        model.addAttribute("prefixadoValue",admin.getTaxas("prefixado"));
        model.addAttribute("lciValue",admin.getTaxas("lci"));
        model.addAttribute("lcaValue",admin.getTaxas("lca"));
        model.addAttribute("cdbValue",admin.getTaxas("cdb"));
        model.addAttribute("lcValue",admin.getTaxas("lc"));
        return "admin";
    }
    
    @RequestMapping("adminChanges")
    public String adminChanges(TaxasHelper taxasHelper,Model model){
        Admin admin = new Admin();
        System.out.println("ASD: " + taxasHelper.getSelic());
        admin.atualizaTaxas(taxasHelper);
        
        model.addAttribute("selicValue",admin.getTaxas("selic"));
        model.addAttribute("ipcaValue",admin.getTaxas("ipca"));
        model.addAttribute("prefixadoValue",admin.getTaxas("prefixado"));
        model.addAttribute("lciValue",admin.getTaxas("lci"));
        model.addAttribute("lcaValue",admin.getTaxas("lca"));
        model.addAttribute("cdbValue",admin.getTaxas("cdb"));
        model.addAttribute("lcValue",admin.getTaxas("lc"));
        return "admin";
    }
    
    
    @RequestMapping("acessoNegado")
    public String acessoNegado(){
        return "acessoNegado";
    }
    
    @RequestMapping("attTableTaxas")
    public String attTaxas(Model model){
        Admin admin = new Admin();
        model.addAttribute("selicValue",admin.getTaxas("selic"));
        model.addAttribute("ipcaValue",admin.getTaxas("ipca"));
        model.addAttribute("prefixadoValue",admin.getTaxas("prefixado"));
        model.addAttribute("lciValue",admin.getTaxas("lci"));
        model.addAttribute("lcaValue",admin.getTaxas("lca"));
        model.addAttribute("cdbValue",admin.getTaxas("cdb"));
        model.addAttribute("lcValue",admin.getTaxas("lc"));
        return "tableTaxas";
    }
    
   
}
