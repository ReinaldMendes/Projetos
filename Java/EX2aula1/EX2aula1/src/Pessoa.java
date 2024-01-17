/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author reinald.2967
 */
//classe Pessoa
public class Pessoa {
    //atributos da classe pessoa
    static String nome;
    static Integer idade;
    static Float salario;
    //metodo main chamando outros metodos
    public static void main(String[] args) {
        //passando valores
        nome="Jean Vargas";
        idade=45;
        salario=1000f;
        //metodo chamados
        exibeNome();
        exibeIdade();
        exibeSalario();
    }

    public static void exibeNome() {
        System.out.println("O nome da pessoa é\n"+nome);
    }
    public static void exibeIdade() {
         System.out.println("Ele tem\n"+idade+ "anos");
    }

     public static void exibeSalario() {
        System.out.println("E seu salario é de R$"+salario);
    }
    
}
