import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class PasirinktiPacienta implements IMyInfo{

    private int count = 0;



    public int getCount() {
        return count;
    }

    @Override
    public void showInfo() {
        try{
            // 1. Get a connection to database
            Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost/ligos_db", "root", "");
            // 2. create a statement
            Statement myStmt = myConn.createStatement();
            ResultSet myRs = myStmt.executeQuery("select * from pacientai");
            while (myRs.next())
            {
                String lytis;
                if(myRs.getInt("lytis") == 1)
                    lytis = "vyras";
                        else
                            lytis = "moteris";
                System.out.println(myRs.getInt("pacientoID") + " " + myRs.getString("vardas") + " " +myRs.getString("pavarde") + " "+ myRs.getInt("amzius") + " " + lytis);
                count++;
            }

        }
        catch (Exception exc){
            exc.printStackTrace();
        }
    }
}
