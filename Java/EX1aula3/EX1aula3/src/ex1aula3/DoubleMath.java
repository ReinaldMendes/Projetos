/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ex1aula3;

/**
 * ponto flutuante Double, Math
 * @author reinald.2967
 */
public class DoubleMath {
    public static void main(String[] args) {
        double catetoA, catetoB,hipotenusa;
        catetoA = 3;
        catetoB = 4;
        //não precisa importar a biblioteca Math.sqrt
        hipotenusa = Math.sqrt(catetoA * catetoA + catetoB * catetoB);
        System.out.println(" a Hipotenusa é: "+hipotenusa);
    }
}
