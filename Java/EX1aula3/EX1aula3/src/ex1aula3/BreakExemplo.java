/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ex1aula3;

/**
 *
 * @author reinald.2967
 */
public class BreakExemplo {
    public static void main(String[] args) {
        int x= 0;
        int y= 30;
        for (int i=x; i<y;i++){
            if(i%19==0){
                System.out.println("Achei um número divisível por 19 entre x e y");
                break;
            }
        }
    }
    
}
