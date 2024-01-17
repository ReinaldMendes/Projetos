/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package ex1aula4;

/**
 *
 * @author reinald.2967
 */
public class MultiplosFor {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
          int fatorial=1;
          
        //for(int i=0;i<100;i++){
        //todos os divisiveis por 3
           //if(i%3==0){
            //System.out.println(i);
            //}
        //}
         //for (i=1;i<=1000;i++){
            // soma de 1 até 100
           // soma=soma+i;
 
         //} 
         // System.out.println(soma);
         
         for(int n=0;n<=10;n++){
             
            if(n==1){
                fatorial=n*1;
            }
            if(n==0){
                fatorial=1;
            }
            fatorial=fatorial*n;
             System.out.println("O fatorial de " +n+ " é : " +fatorial);
         }
    }
}
        
        // TODO code application logic here
    
    

