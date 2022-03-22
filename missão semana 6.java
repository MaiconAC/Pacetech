package projetosemana6;

import java.util.Scanner;

public class ProjetoSemana6 {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        // Declaração das variáveis
        char opcao; 
        float temperatura, tempConvertida, cotacao, valor, valorConvertido;
        
        do{
            System.out.println();
            System.out.println("-----------------------------");
            System.out.println("FERRAMENTA DE CONVERSÃO");
            System.out.println("-----------------------------");
            System.out.println("1)Celsius para Fahrenheit");
            System.out.println("2)Fahrenheit para Celsius");
            System.out.println("3)Reais para Dólar");
            System.out.println("4)Dólar para Reais");
            System.out.println("5)Fechar o programa");
            System.out.println();
            System.out.print("Opção desejada: ");
            opcao = leia.next().charAt(0);
            switch(opcao){
                case '1':
                    System.out.print("Temperatura (em °C): ");
                    temperatura = leia.nextFloat();
                    tempConvertida = 32 + temperatura * 1.8f;
                    System.out.printf("A temperatura %.2f°C equivale a %,2f°F\n",
                            temperatura, tempConvertida);
                    break;
                case '2':
                    System.out.print("Temperatura (em °F): ");
                    temperatura = leia.nextFloat();
                    tempConvertida = (temperatura - 32)/1.8f;
                    System.out.printf("A temperatura %.2f°F equivale a %,2f°C\n",
                            temperatura, tempConvertida);
                    break;
                case '3':
                    System.out.print("Cotação do dólar: ");
                    cotacao = leia.nextFloat();
                    System.out.print("Valor em reais: ");
                    valor = leia.nextFloat();
                    valorConvertido = valor / cotacao;
                    System.out.printf("R$%.2f equivale a US$%.2f\n", valor,
                            valorConvertido);
                    break;
                case '4':
                    System.out.print("Cotação do dólar: ");
                    cotacao = leia.nextFloat();
                    System.out.print("Valor em dólares: ");
                    valor = leia.nextFloat();
                    valorConvertido = valor * cotacao;
                    System.out.printf("US$%.2f equivale a R$%.2f\n", valor,
                            valorConvertido);
                    break;
                case '5':
                    System.out.println("Fim do programa.");
                    break;
                default:
                    System.out.println("Opção inválida!");
                    break;
            }
        } while(opcao != '5');
    }
}
