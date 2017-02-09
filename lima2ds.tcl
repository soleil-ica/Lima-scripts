# Asoociated to Lima SOLEIL release_1_3_0

####################################################################################################################
# peut travailler en mode DEV   => copie des fichiers selon le profile local de l'utilisateur
# peut travailler en mode PROD  => copie des fichiers selon le profile DEVICE_ROOT
####################################################################################################################
set mode "unknown"

if {$::argc ==1} {
  set mode [lindex $::argv 0]
}

if {[string compare [string tolower $mode] "dev"]==0} {
  puts ""
  puts "======================================================================"
  puts "DEV mode : Files will be copied according to user profile"
  puts "======================================================================"
} else {
  if {[string compare $mode "prod"]==0} {
    puts ""
    puts "======================================================================"
    puts "PROD mode : Files will be copied according to DEVCICE_ROOT profile"
    puts "======================================================================"
  } else {
    puts ""
    puts "======================================================================"
    puts "UNKNOWN mode : Nothing To Do - Please specify DEV or PROD"
    puts "======================================================================"
  }
}


####################################################################################################################
#Rechercher un fichier par mot clef dans un repertoire et ses sous repertoires
####################################################################################################################
proc Find { ItemRecherche Chemin {Init 1}} {

  global nbFileTrouve 0
  global list_founded_files {}

  #si premier appel de Find par client, initialiser les variables
  if {$Init ==1} {
    set nbFileTrouve 0
    set list_founded_files {}
  }

  #on s'assure que le Chemin se termine par "/" au cas ou le client oublie de le preciser
  set chemin $Chemin
  if { [string index $chemin [expr [string length $chemin] - 1] ] != "/" } {
    set chemin $chemin/
  }


  #------------------------------------------------------------------------------------------------------------------
  #on decoupe en 2 parties pour pouvoir afficher traiter les dossiers d'abord, ensuite les fichiers
  #------------------------------------------------------------------------------------------------------------------
  if {[catch {set Listefile [glob $chemin*]}]==0} {

    #PARTIE 1 : Obtenir la liste de tous les dossiers
    foreach file $Listefile {
      if {[file isdirectory  $file]==1} {
        #recommencer de maniere recursive sur les sous dossiers
        Find $ItemRecherche $file/ 0
      }
    }


    #PARTIE 2 : Obtenir la liste de tous les fichiers
      foreach file $Listefile {
        if {[file isdirectory  $file]==0} {
          if {[regexp  -nocase $ItemRecherche [file tail $file]] !=0 } {
            incr nbFileTrouve
            #mettre à jour la liste des fichiers trouves
            lappend list_founded_files $file
          }
        }
      }
  }

  #on a tout trouve, on retourne la liste des fichiers trouves
  return $list_founded_files
}


####################################################################################################################
#Copier un fichier de Src vers Dest, en respectant l'arborescence de DEVICE_ROOT (plateformes : Unix, Windows)
#unix :
####################################################################################################################
proc copy_file {item Src Dest} {

    global To ""
    #si mode == DEV ou mode ==PROD
    if {[string compare [string tolower $::mode] "dev"]==0 || [string compare [string tolower $::mode] "prod"]==0} {

      #on s'assure que le chemin source se termine par "/" au cas ou le client oublie de le faire
      set src $Src
      if { [string index $src [expr [string length $src] - 1] ] != "/" } {
        set src $src/
      }

      #on s'assure que le chemin se termine par "/" au cas ou le client oublie de le faire
      set dest $Dest
      if { [string index $dest [expr [string length $dest] - 1] ] != "/" } {
        set dest $dest/
      }

      #chemin source relatif
      set From "[pwd]/$src"

      #définit ler chemin cible relatif selon la plateforme
      switch $::tcl_platform(platform) {
          unix {
            #si DEBUG, utiliser destination par rapport à /user comme sur triton
            if {[string compare [string tolower $::mode] "dev"]==0} {
              set To "/home/informatique/ica/$::tcl_platform(user)/DeviceServers"
            } else {
              set To "/usr/Local/DeviceServers/linux/$dest"
            }
          }
          windows {
            #si DEBUG, utiliser destination / user comme sur triton
            if {[string compare [string tolower $::mode] "dev"]==0} {
              set To "c:/DeviceServers"
            } else {
              set To "/usr/Local/DeviceServers/win32/$dest"
            }
          }
      }


      #Obtenir la liste de tous les fichiers
      set Liste_Items {}
      set Liste_Items [Find $item $src 1]

      if {[llength $Liste_Items] == 0} {
        puts "$item is not found in $From : ERROR"
      } else {
        foreach file $Liste_Items {
          if {[file isdirectory  $file]==0} {
              if {[catch {set TOTO [file copy -force $file  $To]} errText]} {
                puts "[file tail $file] : $errText"
              } else {
                puts "[file tail $file] : COPIED"
              }
          }
        }
      }
    }
}


#définit ler nom du fichier à copier selon la plateforme
switch $::tcl_platform(platform) {
    unix {

      #copy Device LimaDetector
      copy_file "ds_LimaDetector"               "applications/tango/cpp/target/nar/"                                    ""

      #copy lima.control library
      copy_file "libLimaCore"                	"target/nar/lib"                                                		"lib"
	
      #copy lima.third-partylibrary
      copy_file "libLimaProcesslib"        		"third-party/Processlib/target/nar/lib"                         		"lib"

      #copy lima.camera plugin library
      copy_file "libLimaBasler"                 "camera/basler/target/nar/lib"                                          "lib"

      #copy lima.camera plugin library
      copy_file "libLimaSimulator"              "camera/simulator/target/nar/lib"                                       "lib"

      #copy lima.camera plugin library
      copy_file "libLimaXpad"                   "camera/xpad/target/nar/lib"                                            "lib"

      #copy lima.camera plugin library
      copy_file "libLimaPilatus"                "camera/pilatus/target/nar/lib"                                         "lib"

      #copy lima.camera plugin library
      copy_file "libLimaMarccd"                 "camera/marccd/target/nar/lib"                                    		"lib"
      
      #copy lima.camera plugin library
      copy_file "libLimaProsilica"              "camera/prosilica/target/nar/lib"                                       "lib"

      #copy lima.camera plugin library
      copy_file "libLimaAviex"             		"camera/aviex/target/nar/lib"                                     		"lib"

      #copy lima.camera plugin library
      copy_file "libLimaEiger"                  "camera/eiger/target/nar/lib"                                           "lib"

      #copy lima.camera plugin library
      copy_file "libEigerAPI"                  "camera/eiger/sdk/linux/EigerAPI/target/nar/lib"                        "lib"

      #copy lima.camera plugin library
      copy_file "libLimaMerlin"                 "camera/merlin/target/nar/lib"                                          "lib"	  
	  
      #copy lima.camera plugin library
      copy_file "libLimaImxpad"                 "camera/imxpad/target/nar/lib"                                          "lib"	  
      
      ################################# shared library delivered by providers ###################################
      
      copy_file "libPvAPI.so"             		"camera/prosilica/sdk/bin/x86"			                        		"lib"

      copy_file "libMx.so.1"                    "camera/aviex/sdk/linux/lib"    			                        	"lib"

      copy_file "libtiff.so.5"             		"camera/pilatus/sdk/linux/lib"			                        		"lib"	  
    }

    windows {

      #copy Device LimaDetector
      copy_file "ds_LimaDetector.exe"           "applications/tango/cpp/target/nar/"                           ""

      #copy Device LimaDetector
      copy_file "ds_LimaDetector.pdb"           "applications/tango/cpp/target/nar/"                           ""

      #copy lima.control library
      copy_file "LimaCore"                		"target/nar/lib/"                                                		"lib"
	
      #copy lima.third-partylibrary
      copy_file "LimaProcesslib"        		"third-party/Processlib/target/nar/lib"                         		"lib"

      #copy lima.camera plugin library
      copy_file "LimaSimulator"              	"camera/simulator/target/nar/lib"                                       "lib"

      #copy lima.camera roperscientific library
      copy_file "LimaRoperScientific"        	"camera/roperscientific/target/nar/lib"            						"lib"

	  #copy lima.camera pco library
      copy_file "LimaPco"    	    			"camera/pco/target/nar/lib"						     					"lib"

      #copy lima.camera perkinelmer library
      copy_file "LimaPerkinElmer"    	    	"camera/perkinelmer/target/nar/lib"	   									"lib"

      #copy lima.camera andor library
      copy_file "LimaAndor"						"camera/andor/target/nar/lib"											"lib"      

      #copy lima.camera hamamatsu library
      copy_file "LimaHamamatsu"				    "camera/hamamatsu/target/nar/lib"										"lib"      

      #copy lima.camera hamamatsu library
      copy_file "LimaUview"                     "camera/uview/target/nar/lib"                                           "lib"      

      ################################# shared library delivered by providers ###################################

      copy_file "Pvcam32.dll"                   "camera/roperscientific/sdk/msvc/bin/x86"                               "lib"      
      copy_file "pv_icl32.dll"                  "camera/roperscientific/sdk/msvc/bin/x86"                               "lib"
	  
	  copy_file "SC2_Cam.dll"                  	"camera/pco/sdkPco/bin/"                               					"lib"  
	  copy_file "sc2_cl_me4.dll"				"camera/pco/sdkPco/bin/"                               					"lib"  

	  copy_file "XISL.dll"						"camera/perkinelmer/sdk/msvc/bin/"                     					"lib"  

	  copy_file "ATMCD32D.DLL"					"camera/andor/sdk/msvc/bin/"											"lib"  

      copy_file "dcamapi.dll"					"camera/hamamatsu/sdk/msvc/bin/"										"lib"  

    }
}
