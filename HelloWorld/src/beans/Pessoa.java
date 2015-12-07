package beans;

public class Pessoa implements java.io.Serializable
{
	String nome="";
	int idade=0;
	String cpf="";
	
	public Pessoa(){}
	
	public Pessoa(String vNome, int vIdade, String vCPF){
		setNome(vNome);
		setIdade(vIdade);
		setCpf(vCPF);
	}
	
	public String getNome(){return(nome);}
	public int getIdade(){return(idade);}
	public String getCpf(){return(cpf);}
	
	public void setNome(String v){nome=v;}
	public void setIdade(int v){idade=v;}
	public void setCpf(String v){cpf=v;}
	
	public String toString(){
		return("Nome:"+nome+"\nIdade:"+idade+"\nCPF:"+cpf);
	}
}
