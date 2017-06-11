/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fidape.Sistema;

import fidape.Controller.TaxasHelper;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 *
 * @author adria
 */
public class Admin {
    
    
    public Admin(){
        
    }
    
    public void atualizaTaxas(TaxasHelper taxasHelper){
        setTaxas("selic",Double.parseDouble(taxasHelper.getSelic()));
        setTaxas("ipca",Double.parseDouble(taxasHelper.getIpca()));
        setTaxas("prefixado",Double.parseDouble(taxasHelper.getPrefixado()));
        setTaxas("lci",Double.parseDouble(taxasHelper.getLci()));
        setTaxas("lca",Double.parseDouble(taxasHelper.getLca()));
        setTaxas("cdb",Double.parseDouble(taxasHelper.getCdb()));
        setTaxas("lc",Double.parseDouble(taxasHelper.getLc()));
    }
    
    public void setTaxas(String tipo,Double valor){
        try {
           File file = new File("C:\\Users\\adria\\Documents\\NetBeansProjects\\simuladorinvestimentos-fin\\src\\main\\java\\fidape\\Sistema\\Taxas.txt");
           
            FileReader arq = new FileReader(file);
            BufferedReader lerArq = new BufferedReader(arq);

            StringBuilder linhaS = new StringBuilder();
            String linha = lerArq.readLine(); 
            while (linha != null) {
              if(linha.contains((tipo+":"))){
                  linhaS.append(tipo+":"+valor+"\n");

              }else linhaS.append(linha+"\n");


              linha = lerArq.readLine(); 
            }

            lerArq.close();
            arq.close();
            file.delete();
            FileWriter fileW = new FileWriter(file);
            fileW.write(linhaS.toString());
            fileW.close();
          } catch (IOException e) {
              System.err.printf("Erro na abertura do arquivo: %s.\n",
                e.getMessage());
          }
 
    }
    
    public Double getTaxas(String tipo){
         try {
            File file = new File("C:\\Users\\adria\\Documents\\NetBeansProjects\\simuladorinvestimentos-fin\\src\\main\\java\\fidape\\Sistema\\Taxas.txt");
           
            FileReader arq = new FileReader(file);
            BufferedReader lerArq = new BufferedReader(arq);

            
            String linha = lerArq.readLine(); 
            while (linha != null) {
              if(linha.contains((tipo+":"))){ System.out.println("TA: " + linha);
                  return Double.parseDouble(linha.substring(linha.indexOf(':')+1));
              
              }

              linha = lerArq.readLine(); 
            }

            lerArq.close();
            arq.close();
             } catch (IOException e) {
              System.err.printf("Erro na abertura do arquivo: %s.\n",
                e.getMessage());
          }
 
         return null;
    }
    
   
}
