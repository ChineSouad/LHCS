package action.medecin;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import modele.Ville;

import com.opensymphony.xwork2.Action;

public class SearchAction implements Action{

	private Map<String, String> stateMap = new LinkedHashMap<String, String>();
	private String dummyMsg;
	//Parameter for Jquery
	private String countryName;
    dao.VilleDao villeDao=new dao.VilleDao();
	public String execute() {
		
		if (countryName.equals("Tunisia")) {
			List<Ville> listVille=villeDao.chercherName(countryName);
			for (int i=0;i<listVille.size();i++){
			stateMap.put(listVille.get(i).getNom(), listVille.get(i).getNom());}
			
		} else if (countryName.equals("US")) {
			stateMap.put("1", "Georgia");
			stateMap.put("2", "Utah");
			stateMap.put("3", "Texas");
			stateMap.put("4", "New Jersey");
		} else if (countryName.equals("Select Country")) {
			stateMap.put("1", "Select State");
		}
		dummyMsg = "Ajax action Triggered";
		return SUCCESS;
	}

	public Map<String, String> getStateMap() {
		return stateMap;
	}

	public String getDummyMsg() {
		return dummyMsg;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setStateMap(Map<String, String> stateMap) {
		this.stateMap = stateMap;
	}

	public void setDummyMsg(String dummyMsg) {
		this.dummyMsg = dummyMsg;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
}