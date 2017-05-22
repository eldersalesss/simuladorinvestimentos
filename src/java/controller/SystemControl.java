package src.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;
import src.java.Sistema.Investimentos;
import src.java.Sistema.Resultado;

import javax.servlet.http.HttpServlet;
import java.util.ArrayList;

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
    public String identificarClasse(ParamHelper paramHelper,Model model){

        String nomeDaClasse = "src.java.Sistema." + paramHelper.getClasse();

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
        return "chart";
    }

    @RequestMapping("doTable")
    public String doTable(Model model){
        model.addAttribute("saldoMensal",resultado.getSaldoMensal());
        model.addAttribute("adicionado",resultado.getAdicionado());
        model.addAttribute("mensal",resultado.getMensal());
        model.addAttribute("saldoAtual",resultado.getSaldoAtual());
        model.addAttribute("diferenca",resultado.getDiferencaMensal());
        return "table";
    }

    @RequestMapping("doTableDetail")
    public String doTableDetail(Model model){
        model.addAttribute("saldoMensal",resultado.getSaldoMensal());
        model.addAttribute("adicionado",resultado.getAdicionado());
        model.addAttribute("mensal",resultado.getMensal());
        model.addAttribute("saldoAtual",resultado.getSaldoAtual());
        model.addAttribute("diferenca",resultado.getDiferencaMensal());
        return "tableDetalhada";
    }
}
