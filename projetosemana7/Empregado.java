
package projetosemana7;

public class Empregado {
    private String nome, sobrenome;
    private float salario;

    public Empregado(String nome, String sobrenome, float salario) {
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.setSalario(salario);
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public float getSalario() {
        return salario;
    }

    public void setSalario(float salario) {
        if (salario < 0) {
            this.salario = 0;
        } else {
            this.salario = salario;
        }
    }
    
    public void Infos() {
        System.out.println("Nome do funcionário: " + nome + sobrenome);
        System.out.println("Salário: " + salario);
        System.out.println();
    }
    
    public void aumento() {
        this.salario = salario + salario*0.10f;
        System.out.println("O salário de " + this.nome + 
                " após o aumento é de " + this.salario + " reais.");
    }
    
}
