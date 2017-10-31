import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class NaujasPacientas implements IMyInfo {

    private String vardas;
    private String pavarde;
    private int amzius;
    private int lytis;

    public NaujasPacientas(String vardas, String pavarde, int amzius, int lytis) {
        this.vardas = vardas;
        this.pavarde = pavarde;
        this.amzius = amzius;
        this.lytis = lytis;
    }

    public void insertNaujasPacientas(){
        try{
            // 1. Get a connection to database
            Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost/ligos_db", "root", "");
            // 2. create a statement
            Statement myStmt = myConn.createStatement();
            String sql = "insert into pacientai (vardas, pavarde, amzius, lytis) values ('"+ vardas + "', '" + pavarde +"', '" + amzius +"', '" +  lytis +"')";
            myStmt.executeUpdate(sql);
        }
        catch (Exception exc){
            exc.printStackTrace();
        }
    }


    @Override
    public void showInfo() {
        String lyt;
        if(lytis == 0)lyt = "vyras";
        else lyt = "moteris";

        System.out.println("Paciento info: " + vardas + " " +pavarde + " " + amzius + " " + lyt);
    }

}
