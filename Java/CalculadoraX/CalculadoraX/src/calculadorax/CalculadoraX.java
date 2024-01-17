/*
* Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change
this license
* Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
*/
package calculadorax;
/**
*
* @author reinald
*/
public class CalculadoraX {
    private float num1;//variavel da classe
    private float num2;//variavel da classe
    private float total;//variavel da classe
//fazendo um método construtor que aqui no java tem o nome da classe.
//Qualquer coisa que se queira que se execute primeiro coloca-se dentro do construtor
    public CalculadoraX(){
    num1 = 0;
    num2 = 0;
    total = 0;//são inicializados com zero para não puxar lixo de memória
}
//método construído para retornar o valor do atributo"total"
    public float getTotal () {
    return (total);
}
//método construído para colocar valor no atributo "num1"
    public void setNum1(float v1){ //o set recebe o valor do usuário
        num1 = v1;
}
//método construído para colocar valor no atributo "num2"
    public void setNum2(float v1){
        num2 = v1;
}
/*método construído para receber dois valores, efetuar um cálculo e retornar o resultado
sem usar os atributos da classe.
*/
  public void somar(){
        total = num1 + num2;
}
/*
método construído para efetuar um cálculo com valores
previamente passados aos atributos "num1" e "num2" da
classe. O resultado do cálculo será armazenado no atributo
"total" e poderá ser obtido por meio da chamada ao método "getTotal".
*/
    public void diminuir(){
        total = num1 - num2;
}
/*método construído para efetuar um cálculo com valores
previamente passados aos atributos "num1" e "num2" da classe
e retorna o valor do cálculo.
*/
    public void multiplicar(){
        total = num1 * num2;
}
  public void dividir() {
    if (num2 != 0 ||num1 != 0 ) {
        total = num1 / num2;
    } else {
        System.out.println("Não é possível dividir por zero.");
    }
}

}
