/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package transportadora_polimorfismo;

import java.util.Scanner;

/**
 *
 * @author reinald.2967
 */
public class Transportadora_polimorfismo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
         try(Scanner entrada = new Scanner(System.in)){//try direciona para onde está o erro
            System.out.println("Informe a distância: ");
            int distancia = entrada.nextInt();
            System.out.println("Qual o tipo de frete: (1) Normal, (2) Sedex, (3) Simples,(4) Executivo");
            int opcaoFrete = entrada.nextInt();
            
           while(opcaoFrete > 4 ||opcaoFrete < 1){
            System.out.println("Você errou, escolha algum desses tipos de frete: (1) Normal, (2) Sedex, (3) Simples, (4) Executivo"); 
            opcaoFrete = entrada.nextInt();
           }
             
            TipoFrete tipoFrete = TipoFrete.values()[opcaoFrete -1];
            Frete frete = tipoFrete.obterFrete();
            double preço = frete.calculaPreco(distancia);
            System.out.printf("O valor total é de R$ %.2f",preço);
        }
    }
    
}
