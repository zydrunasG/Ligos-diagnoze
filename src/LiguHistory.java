import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class LiguHistory implements  IMyInfo{
    private int pID;


    public LiguHistory(int pID) {
        this.pID = pID;
    }

    @Override
    public void showInfo() {
        try{
            // 1. Get a connection to database
            Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost/ligos_db", "root", "");
            // 2. create a statement
            Statement myStmt = myConn.createStatement();
            ResultSet myRs = myStmt.executeQuery("SELECT pavadinimas FROM `ligos` INNER JOIN pacientuligos ON ligos.ligosID=pacientuligos.ligosID WHERE pacientuligos.pacientoID=" + pID);

            while(myRs.next()){
                System.out.println(myRs.getString("pavadinimas"));
            }
        }
        catch (Exception exc){
            exc.printStackTrace();
        }
    }
}