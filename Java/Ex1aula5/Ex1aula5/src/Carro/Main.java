/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Carro;

/**
 *
 * @author reinald.2967
 */
public class Main {
    public static void main(String[] args) {
        
        
        Carro C4 = new Carro();//Classe instanciada
        C4.ligar();
        C4.trocarMarcha();
        C4.desligar();
        
        
        Carro Gol = new Carro();
        Gol.desligar();
        Gol.trocarMarcha();
        Gol.ligar();
        
    }
    
}
