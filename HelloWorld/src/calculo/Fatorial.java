/**
 * 
 */
package calculo;

/**
 * @author Scopus
 *
 */
public class Fatorial {
	public double calcule(double x){
		double saida = 1;
		for(double i=x;i>1;i--){
			saida = saida * i;			
		}
		return saida;
	}	
}