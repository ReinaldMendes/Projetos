/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package transportadora;

/**
 *
 * @author reinald.2967
 */
public class frete {
    
    private TipoFrete tipo;
    
     public frete(TipoFrete tipo){
         this.tipo = tipo;   
     }
     public double calculaPreco(int distancia){
         double preço = 0;
         if(TipoFrete.NORMAL.equals(tipo)){
             preço = distancia*1.25 + 10;
         }else if(TipoFrete.SEDEX.equals(tipo)){
             preço=distancia* 1.45 +12;
         }else if(TipoFrete.SIMPLES.equals(tipo)){
             preço=distancia* 1.00 +8;
         }else if(TipoFrete.EXECUTIVO.equals(tipo)){
             preço=distancia* 2.00 + 20;
         }
         return preço;
    }
}
