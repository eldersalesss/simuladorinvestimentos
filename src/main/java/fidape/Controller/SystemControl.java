package fidape.Controller;

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


}
