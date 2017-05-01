import java.util.ArrayList;

/**
 * Created by adria on 25/04/2017.
 */
public class TesouroDireto extends Investimento{


    public TesouroDireto(Double valor, int tempo){
        this.valor = valor;
        this.tempo = tempo;
    }



    @Override
    public Double previsaoRetorno() {
        if(!mensal) {
            if (tipo.equalsIgnoreCase("selic")) simuladorSelic();
            else if (tipo.equalsIgnoreCase("ipca")) simuladorIPCA();
            else if (tipo.equalsIgnoreCase("prefixado")) simuladorPrefixado();

        }else{
            if (tipo.equalsIgnoreCase("selic")) simulador_MensalSelic();
            else if (tipo.equalsIgnoreCase("ipca")) simulador_MensalIPCA();
            else if (tipo.equalsIgnoreCase("prefixado")) simulador_MensalPrefixado();
        }
        return 5037.21;
    }


    private Double simuladorSelic(){
        return 5037.21;
    }

    private Double simuladorIPCA(){
        return null;
    }

    private Double simuladorPrefixado(){
        return null;
    }

    private Double simulador_MensalIPCA(){
        return null;
    }

    private Double simulador_MensalPrefixado(){
        return null;
    }

    private Double simulador_MensalSelic(){
        return null;
    }


    public void setMensal(boolean mensal){
        this.mensal = mensal;
    }

    public void setTipo(String tipo){
        this.tipo = tipo;
    }
}
