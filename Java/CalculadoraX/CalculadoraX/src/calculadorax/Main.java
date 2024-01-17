/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package calculadorax;

import java.util.Scanner;

/**
 *
 * @author reinald.2967
 */
public class Main {
        // TODO code application logic here
    public static void main(String[] args) {
//INSTANCIAR "declarar e criar objeto "calc" da classe "Calculos"
    CalculadoraX calc;
    calc = new CalculadoraX();
//instanciar a classe Scanner
    Scanner sc = new Scanner(System.in);
//Atributos do programa
    float valor1, valor2, resultado = 0;
    int opcao;
    do {
        System.out.println("Escolha o cálculo: ");
        System.out.println("1 - Somar");
        System.out.println("2 - Diminuir");
        System.out.println("3 - Multiplicar");
        System.out.println("4 - Dividir");
        System.out.println("5 - Sair");
        System.out.println("Opção: ");
        opcao = sc.nextInt(); //apelido da biblioteca Scanner chamada no início
        if (opcao != 5){
//Leitura dos valores digitados pelo usuário.
            System.out.println("\nDigite o primeiro valor: ");
             valor1 = sc.nextFloat();
             System.out.println("\nDigite o segundo valor: ");
             valor2 = sc.nextFloat();
            //Execução do cálculo escolhido pelo usuário.
            switch(opcao){
                case 1:
                      calc.setNum1(valor1);
                      calc.setNum2(valor2);
                      calc.somar();
                      resultado = calc.getTotal();
                      break;
                case 2:
                      calc.setNum1(valor1);
                      calc.setNum2(valor2);
                      calc.diminuir();
                      resultado = calc.getTotal();
                      break;
                 case 3:
                     calc.setNum1(valor1);
                      calc.setNum2(valor2);
                      calc.multiplicar();
                      resultado = calc.getTotal();
                      break;
                
                case 4:
                      calc.setNum1(valor1);
                      calc.setNum2(valor2);
                      calc.dividir();
                      resultado = calc.getTotal();
                      break;
                }
                //Apresentação do resultado cauculo.
                System.out.println("\n \n=====================================");
                System.out.println("Resultado:  " + resultado);
                System.out.println("=========================================================\n\n");        
            }
        }while(opcao != 5);
    }
}




    

