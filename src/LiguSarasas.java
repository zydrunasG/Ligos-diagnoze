import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class LiguSarasas implements IMyInfo {
    @Override
    public void showInfo() {
        try{
            // 1. Get a connection to database
            Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost/ligos_db", "root", "");
            // 2. create a statement
            Statement myStmt = myConn.createStatement();
            ResultSet myRs = myStmt.executeQuery("SELECT * FROM ligos");

            System.out.println("\n\n");
            while (myRs.next()){
                System.out.println(myRs.getString("pavadinimas") + "\n");
                System.out.println("Aprašymas: \n");
                System.out.println(myRs.getString("aprasymas"));
                System.out.println("\nGydymas: \n");
                System.out.println(myRs.getString("gydymas"));
                System.out.println("\n\n");
            }

        }
        catch (Exception exc){
            exc.printStackTrace();
        }
    }
}
