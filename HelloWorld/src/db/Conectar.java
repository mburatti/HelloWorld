/**
 * 
 */
package db;
import java.sql.*;

/**
 * @author Scopus
 *
 */
public class Conectar {

	/**
	 * 
	 */
	private static Connection con;
	private static Statement stm;
	private static String db="jdbc:mysql://localhost:3306/lojinha";
	private static String driver="com.mysql.jdbc.Driver";
	private static String usuario="root";
	private static String senha="Scopus2015!";
	
	public Conectar() {
		// TODO Auto-generated constructor stub		
	}
		
	public static void open() throws Exception {
		Class.forName(driver);
		con = DriverManager.getConnection(db,usuario,senha);
		stm = con.createStatement();
	}
	
	public static void close() throws Exception {
		if(closed()==false){
			stm.close();
			con.close();
		}
	}
	
	public static boolean closed() throws Exception {
		return ((stm==null)&&(con==null));
	}
	
	public static ResultSet executeQuery(String sql) throws Exception {
		if(closed()) 
			open();
		
		return(stm.executeQuery(sql));
	}
	
	public static void setDB(String V){
		db=V;
	}
	
	public static String getDB(){
		return(db);
	}
	
	public static void executeInsert(String nome, double valor) throws Exception {
		String comando = "Insert into produtos (nome,valor) values (\""+nome+"\",\""+valor+"\")";
		executeMe(comando);
	}
	
	public static void executeUpdate(int codigo, String nome, double valor) throws Exception {
		String comando = "Update produtos set nome=\""+nome+"\",valor=\""+valor+"\" where codigo="+codigo;
		executeMe(comando);
	}
	
	public static void delete(int codigo) throws Exception{
		String comando = "Delete produtos where codigo="+codigo;
		executeMe(comando);
	}

	private static void executeMe(String comando) throws Exception{
		if(closed()) 
			open();
		
		stm.executeUpdate(comando);
	}
}
