import java.util.Scanner;

public class Menu extends ShowMenu{


    public void showMenu() {
        int veiksmas =  -1;
        Scanner keyboard = new Scanner(System.in);

        while (veiksmas != 0){


            onlyShowMenu();

            veiksmas = keyboard.nextInt();

            switch (veiksmas){
                case 0:
                    veiksmas = 0;
                    break;
                case 1:
                    System.out.println("Veikiam " + Main.getID()); // debug
                    NaujaLiga naujaLiga = new NaujaLiga();
                    naujaLiga.ivestiSimptomus();
                    break;
                case 2:
                    LiguHistory liguHistory = new LiguHistory(Main.ID);
                    liguHistory.showInfo();
                    break;
                case 3:
                    System.out.println("Sveikas githube");
                    break;
                default:
                    System.out.println("Tokio veiksmo nėrą!");
                    break;
            }
        }
    }

}
