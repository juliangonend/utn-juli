

    public class Main {

    public static void main(String[] args) {
        Athlete athlete1 = new Athlete(45586147,"Julian", 1.90,19,89);
        Athlete athlete2 = new Athlete(23456789, "María", 1.65, 30, 55);
        Athlete athlete3 = new Athlete(34567890, "Ana", 1.75, 28, 63);
        Athlete athlete4 = new Athlete(45678901, "Juan", 1.90, 32, 98);
        Athlete athlete5 = new Athlete(56789012, "Laura", 1.70, 27, 70);
        Athlete athlete6 = new Athlete(67890123, "Pedro", 1.85, 29, 75);
        Athlete athlete7 = new Athlete(78901234, "Sofía", 1.60, 26, 50);
        Athlete athlete8 = new Athlete(89012345, "Miguel", 1.95, 31, 90);
        Athlete athlete9 = new Athlete(90123456, "Elena", 1.68, 24, 58);
        Athlete athlete10 = new Athlete(98765432, "Luis", 2.00, 35, 95);
        NationalTeam nationalTeam1 = new NationalTeam("Rojo","España");
        NationalTeam nationalTeam2 = new NationalTeam("Celeste","Argentina");
        NationalTeam nationalTeam3 = new NationalTeam("Blanco","Inglaterra");
        nationalTeam1.addPlayer(athlete1);
        nationalTeam1.addPlayer(athlete2);
        nationalTeam1.addPlayer(athlete3);
        nationalTeam2.addPlayer(athlete4);
        nationalTeam2.addPlayer(athlete6);
        nationalTeam2.addPlayer(athlete5);
        nationalTeam3.addPlayer(athlete7);
        nationalTeam3.addPlayer(athlete8);
        nationalTeam3.addPlayer(athlete9);
        nationalTeam3.addPlayer(athlete10);
        nationalTeam1.printTeamSize();
        nationalTeam1.printExtraWeight();
        System.out.println("------------");
        nationalTeam2.printTeamSize();
        nationalTeam2.printExtraWeight();
        System.out.println("------------");
        nationalTeam3.printTeamSize();
        nationalTeam3.printExtraWeight();
        System.out.println("------------");
        Proof proof1= new Proof(1,"Prueba de Salto en largo");
        Proof proof2= new Proof(2,"Prueba de Lanzamiento de Jabalina");
        Proof proof3= new Proof(3,"Prueba de 100 metros ");

        proof1.addAthleteToList(athlete1);
        proof1.addAthleteToList(athlete4);
        proof1.addAthleteToList(athlete7);
        proof1.addAthleteToList(athlete10);
        proof2.addAthleteToList(athlete2);
        proof2.addAthleteToList(athlete8);
        proof2.addAthleteToList(athlete5);
        proof3.addAthleteToList(athlete3);
        proof3.addAthleteToList(athlete6);
        proof3.addAthleteToList(athlete9);
        Instalation instalation1= new Instalation("Estadio","Buenos Aires","Estadio Olimpico Bs AS","Atletismo");
        Campus campus= new Campus(1,"Martes","10:00");
        campus.addProof(proof1);
        campus.addProof(proof2);
        campus.addProof(proof3);
        campus.addInstaltion(instalation1);
        instalation1.printThirdAthleteOfSecondProof();
    }
}
