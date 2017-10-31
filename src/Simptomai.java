import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Simptomai implements IMyInfo {

    @Override
    public void showInfo() {
        try{
            // 1. Get a connection to database
            Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost/ligos_db", "root", "");
            // 2. create a statement
            Statement myStmt = myConn.createStatement();
            ResultSet myRs = myStmt.executeQuery("SELECT * FROM simptomai");

            System.out.println("\n\n");
            while (myRs.next()){
               System.out.println(myRs.getInt("simptomoID") + " " + myRs.getString("pavadinimas"));
            }

        }
        catch (Exception exc){
            exc.printStackTrace();
        }
    }
}
