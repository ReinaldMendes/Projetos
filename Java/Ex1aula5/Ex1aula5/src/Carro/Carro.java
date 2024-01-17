/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Carro;

/**
 *
 * @author reinald.2967
 */
public class Carro {
    public String marca;
    public int ano;
    public int marcha;
    public boolean ligado;
    
    public void ligar(){
        if(this.ligado == false){
            this.ligado = true;
               System.out.println("Carro ligado");
        }else{
            System.out.println("O carro já está ligado.");
        }
    }
    public void desligar(){
       if(this.ligado == true){
            this.ligado = false;
               System.out.println("Carro Desligado");
        }else{
            System.out.println("O carro não está ligado.");
        }   
    }
    public void trocarMarcha(){
        System.out.println("Marcha Trocada.");
    }
}
