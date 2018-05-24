package net.proto.servlet;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import net.proto.jdbc.db.DbManager;
import net.proto.stg.bean.StagiaireBean;

public class ServiceManager {

	public ServiceManager() {
	}

	public static String test() {

		String as = "hello world";
		return as;
	}

	// 1- methode de recherche par matricule
	public static List<StagiaireBean> rechercheParMatricule(String matricule) {
		StagiaireBean stgm = DbManager.trouverStagiaireParMatricule(matricule);
		List<StagiaireBean> listStg = new ArrayList<StagiaireBean>();
		if (stgm != null) {
			listStg.add(stgm);
		}
		return listStg;
	}

	// 2- methode de recherche par prénom
	public static List<StagiaireBean> rechercheParPrenom(String prenom) {
		StagiaireBean stg = DbManager.chercherStagiaireParPrenom(prenom);
		List<StagiaireBean> listStg = new ArrayList<StagiaireBean>();
		if (stg != null) {
			listStg.add(stg);
		}
		return listStg;
	}

	// 3- methode de recherche par date de naissance
	public static List<StagiaireBean> rechercheParDate(Date dateDeNaissance) {
		List<StagiaireBean> listStg = DbManager.chercherStgParDn(dateDeNaissance);
		return listStg;
	}
	// 4-methode pour ajouter un stagiaire

	public static boolean ajouterNewStagiaire(StagiaireBean stagiaire) {
		boolean stg = DbManager.ajoutStagiaire(stagiaire);
		return stg;
	}

	// 5-methode pour supprimer un stagiaire

	public static boolean supprimerStagiaire(String matricule) {
		boolean stg = DbManager.supprimeStagiaire(matricule);
		return stg;
	}
	// 6-methode pour chercher par matricule si le stagiaire  existe 

		public static boolean verifierSiLeStgExiste(String matricule) {
			return DbManager.isStagaireExists(matricule);
		}

	public static List<StagiaireBean> getListDeStg() {
		List<StagiaireBean> listStg = DbManager.listDesStg();
		return listStg;
	}
}
