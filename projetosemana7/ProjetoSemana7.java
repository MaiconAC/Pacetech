
package projetosemana7;

public class ProjetoSemana7 {

    public static void main(String[] args) {
        Empregado e1 = new Empregado("José", " da Silva ", 3570f);
        Empregado e2 = new Empregado("Maria", " Gonçalves ", 6000f);
        
        e1.Infos();
        e2.Infos();
        
        e1.aumento();
        e2.aumento();
    }
    
}
