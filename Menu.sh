#! /usr/bin/bash

choix=-1

until [ $choix -eq 0 ]
do
	echo "--------------------------------------"
	echo "Veuillez choisir une option :			"
	echo "	 1 lister le contenu d’un répertoire"
	echo "	 2 créer un répertoire              "
	echo "	 3 supprimer un fichier             "
	echo "	 4 afficher la date                 "
	echo "	 0 quitter                          "
	echo "==>                                   "
	read choix
	echo "--------------------------------------"

	case $choix in
		0)
			echo closing program...
		;;

		1)
			echo saisir le rep path
			read rep_path
			ls $rep_path
		;;
		
		2)
			echo saisir le rep path
			read rep_path
			mkdir $rep_path
		;;
		
		3)
			echo saisir le rep path
			read rep_path
			rm -rf $rep_path
		;;
		
		4)
			date
		;;
	esac
done