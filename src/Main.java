import java.util.Scanner;

public class Main {
    public static int getID() {
        return ID;
    }

    static int ID;

    public static void main(String[] args) {



        int veiksmas = -1;
        Scanner keyboard = new Scanner(System.in);
        while(veiksmas!=0){

            System.out.println("Pasirinkite veiksmą");
            System.out.println("0: EXIT");
            System.out.println("1: Įveskite pacientą");
            System.out.println("2: Pasirinkti pacientą");
            System.out.println("3: Paciento MENIU");
            System.out.println("4: Išvesti Enum kinamuosius");
            System.out.println("5: Išvesti rodiklius");
            System.out.println("6: Parodyti visas ligas ju aprašymus ir gydymus");
            System.out.println("7: Nieko nedaro");
            System.out.println("8: Toza nieko nedaro");
            System.out.println("9: For new branch called shit");


            veiksmas = keyboard.nextInt();

            switch (veiksmas){
                case 0:
                    veiksmas = 0;
                    break;
                case 1:
                    System.out.println("Įveskite vardą pavarde amziu ir lytis (0 = vyr, 1 = mot");
                    String vardas = keyboard.next();
                    String pavarde = keyboard.next();
                    int amzius = keyboard.nextInt();
                    int lytis = keyboard.nextInt();

                    NaujasPacientas np = new NaujasPacientas(vardas, pavarde, amzius, lytis);
                    np.insertNaujasPacientas();
                    np.showInfo();
                    break;
                case 2:
                    System.out.println("Pacientų sąrašas: \n");
                    PasirinktiPacienta pasirinktiPacienta = new PasirinktiPacienta();
                    pasirinktiPacienta.showInfo();
                    System.out.println("Pasirinkite pacientą [įveskite jo ID]");

                    ID = keyboard.nextInt();
                    while (ID > pasirinktiPacienta.getCount() || ID < 1){
                        System.out.println("Nėra tokio paciento, bandykite vėl! ");
                        ID = keyboard.nextInt();
                    }

                    System.out.println("\nPasirinkote ID = " + ID);


                    break;
                case 3:
                    if (ID == 0){
                        System.out.println("\nNepasirinkote paciento!\n");
                        break;
                    }
                    Menu pMenu = new Menu();
                    pMenu.showMenu();
                    break;
                case 4:
                    for (Enum k: Enumas.values()
                         ) {
                        System.out.println(k);
                    }
                    break;
                case 5:
                    Simptomai simptomai = new Simptomai();
                    simptomai.showInfo();
                    break;
                case 6:
                    LiguSarasas liguSarasas = new LiguSarasas();
                    liguSarasas.showInfo();
                    break;
                default:
                    System.out.println("\nTokio veiksmo nėra!\n");
                    break;
            }
        }


    }


}
