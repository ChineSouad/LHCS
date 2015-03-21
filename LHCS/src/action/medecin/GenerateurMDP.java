package action.medecin;

import java.util.Random;
import dao.MedecinDao;

public class GenerateurMDP {
    
    public static final int        NOMBRE_LETTRES    = 26;
    public static final int        NOMBRE_CHIFFRES    = 10;
    public static final Random    R = new Random();
   
    
    public static String getMDP() {
        char[] mdp = new char[6];
        
        // G�n�re les caract�res al�atoires
        int j = 0;
        for (int i = 0; i < 2; ++i) {
            // Assigne une lettre minuscule al�atoire
            mdp[j++] = (char)((int)'A' + R.nextInt(NOMBRE_LETTRES));
            mdp[j++] = (char)((int)'a' + R.nextInt(NOMBRE_LETTRES));
            // Assigne un chiffre al�atoire
            mdp[j++] = (char)((int)'0' + R.nextInt(NOMBRE_CHIFFRES));
  
        }
        
        // M�lange les caract�res
        char temp;
        for (int i = mdp.length; i > 0;) {
            j = R.nextInt(i);
            --i;
            temp = mdp[i];
            mdp[i] = mdp[j];
            mdp[j] = temp;
        }
        
        return new String(mdp);
    }
    
    public static void main(String[] args) {
    	MedecinDao medecindao=new MedecinDao();
    	
    	while (!medecindao.IsIDUnique(getMDP())){
    		getMDP();
    	}
        System.out.println(getMDP());
    }
}
