/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Enum.java to edit this template
 */
package transportadora_polimorfismo;

import Frete.*;

/**
 *
 * @author reinald.2967
 */
public enum TipoFrete {
     NORMAL {
        @Override
        public Frete obterFrete(){
            return new Normal();
        }
    },
     SEDEX{ 
         @Override
        public Frete obterFrete(){
            return new Sedex();
         }
    },
     SIMPLES{ 
         @Override
        public Frete obterFrete(){
            return new Simples();
        }
     }, 
     EXECUTIVO{ 
         @Override
        public Frete obterFrete(){
            return new Executivo();
        }
     };
   public abstract Frete obterFrete();       
}


