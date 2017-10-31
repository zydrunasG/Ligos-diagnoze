import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class LigosSimptomai {

    private int counter = 0;
    private int[] ligosID = new int[10];
    private int[] ligosIDcounter = new int[10];
    private String[] pavadinimas = new String[10];
    private List<String> ligosSimptomai = new ArrayList<String>();


    public void getLigosSimptomai(){
        try{
            // 1. Get a connection to database
            Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost/ligos_db", "root", "");
            // 2. create a statement
            Statement myStmt = myConn.createStatement();
            ResultSet myRs = myStmt.executeQuery("select ligosID, pavadinimas from ligos");
            while (myRs.next())
            {
                counter++;
                ligosID[counter] = myRs.getInt(1);
                pavadinimas[counter] = myRs.getString("pavadinimas");
                getSimptomuSarasas(ligosID[counter]);

            }

        }
        catch (Exception exc){
            exc.printStackTrace();
        }

        int max = 1;
        for (int i = 1; i <= counter; i++){
            if (ligosIDcounter[i] > ligosIDcounter[i-1]){
                max = i;

            }
        }

        uploadPacientoLigaToDb(max);
        parodytiGydyma(max);


    }
    public void getSimptomuSarasas(int counter){

        try{
            // 1. Get a connection to database
            Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost/ligos_db", "root", "");
            // 2. create a statement
            Statement myStmt = myConn.createStatement();
            ResultSet myRs = myStmt.executeQuery(" SELECT  simptomai.pavadinimas FROM simptomai INNER JOIN ligossimptomai ON simptomai.simptomoID = ligossimptomai.simptomoID WHERE ligosID =" + counter);
            ligosIDcounter[counter] = 0;


            while (myRs.next())
            {
                String gautas = myRs.getString("pavadinimas");

                for (String s: NaujaLiga.pacientoSimtomai
                     ) {

                    if (s.equals(gautas)){
                        ligosIDcounter[counter]++;
                    }
                }
            }
        }
        catch (Exception exc){
            exc.printStackTrace();
        }



    }
    void uploadPacientoLigaToDb(int max){
        try{
            // 1. Get a connection to database
            Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost/ligos_db", "root", "");
            // 2. create a statement
            Statement myStmt = myConn.createStatement();
            String sql = "insert into pacientuligos (pacientoID, ligosID) values (" + Main.ID + "," + max + ")";
            myStmt.executeUpdate(sql);
        }
        catch (Exception exc){
            exc.printStackTrace();
        }
    }

    void parodytiGydyma(int ligID){
        try{
            // 1. Get a connection to database
            Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost/ligos_db", "root", "");
            // 2. create a statement
            Statement myStmt = myConn.createStatement();
            ResultSet myRs = myStmt.executeQuery("SELECT pavadinimas, aprasymas, gydymas FROM ligos WHERE ligosID=" + ligID);
            myRs.next();
            System.out.println("Pavadinimas " + myRs.getString("pavadinimas"));
            System.out.println("\n Aprašymas: \n" + myRs.getString("aprasymas") + "\n");
            System.out.println("\n Gydymas: \n" + myRs.getString("gydymas") + "\n");
        }
        catch (Exception exc){
            exc.printStackTrace();
        }
    }

}
