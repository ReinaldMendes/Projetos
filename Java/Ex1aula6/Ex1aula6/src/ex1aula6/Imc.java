/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package ex1aula6;
import java.util.Scanner;
/**
 *
 * @author reinald.2967
 */
public class Imc{

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        //peso
        System.out.println("Qual o seu peso em kg?");
        double peso = entrada.nextDouble();
        //altura
         System.out.println("Qual sua altura em metros?");
        double altura = entrada.nextDouble();
        //imc cauculo
        
        double imc = peso/(Math.pow(altura,2));
        
        System.out.println("Seu IMC é "+ imc);
        if(imc<16){
            System.out.println("Sua classificação é Magreza grave");
        }
        else if((imc>=16)&& (imc<17)){
            System.out.println("Você está no peso Magreza Moderada");
        } 
         else if((imc>=17)&& (imc<18.5)){
            System.out.println("Sua classificação é Magreza leve");
        } 
         else if((imc>=18.5)&& (imc<25)){
            System.out.println("Sua classificação é Saúdavel");
         }
         else if((imc>=25)&& (imc<30)){
            System.out.println("Sua classificação é Sobrepeso");
         }
     
          else if((imc>=30)&& (imc<35)){
            System.out.println("Sua classificação é obsesidade Grau I");
        } 
       else if((imc>=35)&& (imc<40)){
            System.out.println("Sua classificação é obsesidade Grau II");
        } 
        
        else{
 
                System.out.println("Sua classificação é obsesidade Grau III");
            }
        }
        
    }
    

