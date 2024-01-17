/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package excecoes;

/**
 *
 * @author reinald.2967
 */
public class Excecoes {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int nums[] = new int [4];
        
        try{
            System.out.println("Antes que a excecao seja gerada");
            
            //gera uma excecao de indice fora dos limites
            nums[7] = 10;
            System.out.println("isso não sera exibido");
        }
        catch (ArrayIndexOutOfBoundsException exc){
            // captura a excecao
            
            System.out.println("Indice fora dos limites");
        }
        
        System.out.println("Apos a declaracao de captura");
        // TODO code application logic here
    }/*
    
}
