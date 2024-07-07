
            import java.util.Scanner;

            public class ejer1 {
                public static void main(String[] args) {
                    Scanner src = new Scanner(System.in);
                    int[] num = new int[10];
                    float[] numNeg = new float[10];
                    int contPos = 0, contNeg = 0;
                    float mediaPos=0,mediaNeg=0;
                    float[] numPos = new float[10];
                    for (int i = 0; i < 10; i++) {
                        System.out.println("Ingrese el numero " + i);
                        num[i] = src.nextInt();
                        if (num[i] > 0) {
                            numPos[contPos] = num[i];
                            contPos++;
                        } else {
                            numNeg[contNeg] = num[i];
                            contNeg++;
                        }
                    }
                    for (int i = 0; i < 10; i++) {
                        mediaPos=mediaPos+numPos[i];
                        mediaNeg=mediaNeg+numNeg[i];
                    }
                    System.out.println("contador positivo"+contPos);
                mediaPos= mediaPos/(contPos);
                   mediaNeg=mediaNeg/(contNeg);
                    System.out.println("La media de los numeros positivos es :"+mediaPos);
                    System.out.println("La media de los numeros negativos es :"+mediaNeg);
                }
            }

