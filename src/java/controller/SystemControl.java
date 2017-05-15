package src.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;
import src.java.Sistema.Investimentos;

import javax.servlet.http.HttpServlet;

/**
 * Created by adrianewey on 15/05/17.
 */
@Controller
public class SystemControl{

    @RequestMapping("index")
    public String indexReturn(){
        return "formulario/TD";
    }


    @RequestMapping("calcular")
    public String identificarClasse(ParamHelper paramHelper,Model model){
        System.out.println(paramHelper.getClasse());

        String nomeDaClasse = "src.java.Sistema." + paramHelper.getClasse();

        try {

            Class created = Class.forName(nomeDaClasse);
            Investimentos investimentos = (Investimentos) created.newInstance();

            ActionHelper actionHelper = new ActionHelper();
            actionHelper.convertInvestimento(investimentos,paramHelper);

         /*   ModelAndView mav = new ModelAndView("formulario/resultado");
            mav.addObject("retornoInvestimento",actionHelper.caculated(investimentos));*/


            System.out.println("\n\n"+actionHelper.caculated(investimentos));
            model.addAttribute("retornoInvestimento",actionHelper.caculated(investimentos));
            return "formulario/resultado";

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        }

        return null;
    }





}
