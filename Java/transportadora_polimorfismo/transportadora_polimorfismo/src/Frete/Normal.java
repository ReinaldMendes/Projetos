/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Frete;

import transportadora_polimorfismo.Frete;

/**
 *
 * @author reinald.2967
 */
public class Normal implements Frete{
    public double calculaPreco(int distancia){
        return distancia * 1.25 + 10;
    }
    
}
