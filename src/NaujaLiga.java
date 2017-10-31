import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class NaujaLiga {

    static List<String> pacientoSimtomai = new ArrayList<String>();

    public void ivestiSimptomus() {
        pacientoSimtomai.clear();
        String simptomas = "";
        System.out.println("Įveskite paciento simptomus");
        System.out.println("Nutraukti įvedimui įveskite 0,");
        Scanner keyboard = new Scanner(System.in);
        while (keyboard.hasNext()) {
            simptomas = keyboard.nextLine();

            if (simptomas.equals("0"))
                break;
                    else
                        pacientoSimtomai.add(simptomas);

        }
        System.out.println("Baigėte ivesti simptomus");
        LigosSimptomai ligosSimptomai = new LigosSimptomai();
        ligosSimptomai.getLigosSimptomai();
    }
}
