import java.util.ArrayList;

/**
 * Created by adria on 25/04/2017.
 */
public abstract class Investimento {
    protected Double valor;
    protected int tempo;
    protected String tipo;
    protected boolean mensal = false;

    public Investimento(){

    }

    protected abstract Double previsaoRetorno();

    protected abstract void setMensal(boolean Mensal);
    protected abstract void setTipo(String tipo);
}
