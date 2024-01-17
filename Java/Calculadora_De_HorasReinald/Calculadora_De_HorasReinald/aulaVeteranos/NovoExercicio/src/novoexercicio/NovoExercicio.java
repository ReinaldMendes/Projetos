/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package novoexercicio;

/**
 *
 * @author reinald.2967
 */
public class NovoExercicio {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int numerador[] = {7, 10, 31, 4, 8, 3, 15};
        int denominador[] = {0, 1, 0, 2};

        
            
            for (int i = 0; i < numerador.length; i++) {
                try {
                    int resultado = numerador[i] / denominador[i];
                    System.out.printf("%d / %d = %d\n", numerador[i], denominador[i], numerador[i] / denominador[i]);
                } catch (ArithmeticException exc) {
                    System.out.println("Divisão por zero no índice " + i);
                }
                catch (ArrayIndexOutOfBoundsException e) {
                     System.out.println("Acesso a um índice inválido do array");
                 }
            }
        } 
        
        
    }

