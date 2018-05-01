//Beta 0.1.7
CREATE Orbital_Data_prg_data.ks.
CREATE settings.ks.
CREATE commandTerminal.ks.
CREATE Kerbo_OS_appstore.ks.
CREATE Kerbo_OS_log.ks.
CREATE Kerbo_OS_boot.ks.
CREATE Kerbo_OS_account.ks.
CREATE login_OS_login.ks.
CREATE user_OS_list_sys.ks.
CREATE Kerbo_OS_desktop.ks.
set password_full to "".
set username_full to "".
LOG "run login_OS_login." TO Kerbo_OS_boot.ks.
//this sets up the login details for the user then passes it to the kerbo boot files
print "Type in the username you wish to use".
print "Once you have hit [ENTER] and the OS will show you what you typed".
print "press [ENTER] again to confirm".
set done to false.
set confirmed to false.
UNTIL done {
set ch to terminal:input:getchar().
IF ch = terminal:input:enter {
	print "Username: " + oh + " press [ENTER] to confirm".
	UNTIL confirmed {
		set oa to terminal:input:getchar().
		IF oa = terminal:input:enter {
			set done to true.
			set confirm to true.
			LOG "set username to " + oh + "." to Kerbo_OS_log.ks.
		}
	}
}
set oh to terminal:input:getchar().
}
clearscreen.
LOG "set update_file to "ver_beta_zero_one_eight_updater".
print "installing the login system...".
print "Enter your wanted password".
set password_accepted to false.
set password_full to "".
set stopped to 0.
UNTIL password_accepted {
	set password to terminal:input:getchar().
	set password_full to password_full+password.
	IF password_full = "password" and stopped = 0 {
		print "this password is too common and weak, you may not use this.".
		terminal:input:clear().
	}
	IF password = terminal:input:enter {
		set stopped to 1.
		set word_complete to password_full.
		LOG "set pass to " + word_complete + "." to Kerbo_OS_log.ks.
		clearscreen.
		print "now confirm your password.".
		set password_reenter to terminal:input:getchar().
		set password_reenter_full to password_reenter_full+terminal:input:getchar().
		set matched to 0.
		UNTIL matched = 1 {
			set password_reenter to terminal:input:getchar().
			set password_reenter_full to password_reenter_full+password_reenter.
			IF password_full = password_reenter_full {
				set matched to 1.
				set password_accepted to true.
				clearscreen.
				print "You are now ready to start installing Kerbo-OS-personal 2018!".
			}
		}
	}
}
print "Kerbo OS is performing first time file write process".
print "This will allow the installation wizard to install your software, please be patient.".
LOG "set password to " + password_full + ".".
LOG "set loggedin to 0." to Kerbo_OS_log.ks.
LOG "UNTIL loggedin = 2 {" to Kerbo_OS_log.ks.
LOG "	set username to terminal:input:getchar()." to Kerbo_OS_log.ks.
LOG	"	set username_full to username_full+username." to Kerbo_OS_log.ks.
LOG "	IF username_full = oh {" to Kerbo_OS_log.ks.
LOG "		print "Username correctly inputed, input your password"." to Kerbo_OS_log.ks.
LOG "		set loggedin to 2." to Kerbo_OS_log.ks.
LOG "		UNTIL loggedin = 3 {" to Kerbo_OS_log.ks.
LOG "			set password to terminal:input:getchar()." to Kerbo_OS_log.ks.
LOG "			set password_full to password_full+password." to Kerbo_OS_log.ks.
LOG "			IF password_full = pass {" to Kerbo_OS_log.ks.
LOG "				set loggedin to 3." to Kerbo_OS_log.ks.
LOG "			}" to Kerbo_OS_log.ks.
LOG "		}" to Kerbo_OS_log.ks.
LOG "	}" to Kerbo_OS_log.ks.
LOG "}" to Kerbo_OS_log.ks.
print "Load file has been completed!".
LOG "print "Log-in complete!"." to Kerbo_OS_log.ks.
LOG "run Kerbo_OS_desktop." to Kerbo_OS_log.ks.
LOG "set notation to "[BETA]"." to Kerbo_OS_desktop.ks.
LOG "set OS_Version to 0.1.6." TO Kerbo_OS_desktop.ks.
LOG "set programmer_mode to 0." to Kerbo_OS_desktop.ks.
//basic OS desktop script
LOG "set Desktop to true." to Kerbo_OS_desktop.ks.
LOG "until desktop = false {" to Kerbo_OS_desktop.ks.
LOG "print "Current time: " + TIME:CALENDAR + TIME:CLOCK." to Kerbo_OS_desktop.ks.
LOG "print "Programs:"." TO Kerbo_OS_desktop.ks.
LOG "print "App store (AG1)"." TO Kerbo_OS_desktop.ks.
LOG "print "settings (AG2)"." TO Kerbo_OS_desktop.ks.
LOG "print "Help (AG4)"." TO Kerbo_OS_desktop.ks.
LOG "ON AG1 {" to Kerbo_OS_desktop.ks.
LOG "	run Kerbo_OS_appstore." TO Kerbo_OS_desktop.ks.
LOG "	set Desktop to false." TO Kerbo_OS_desktop.ks.
LOG "}" TO Kerbo_OS_desktop.ks.
LOG "ON AG2 {" TO Kerbo_OS_desktop.ks.
LOG "	set desktop to false." TO Kerbo_OS_desktop.ks.
LOG "	run settings." TO Kerbo_OS_desktop.ks.
LOG "}" TO Kerbo_OS_desktop.ks.
LOG "wait 0.1." TO Kerbo_OS_desktop.ks.
LOG "clearscreen." TO Kerbo_OS_desktop.ks.
LOG "}" TO Kerbo_OS_desktop.ks.
print "Desktop settup complete!".
print "Setting up App store...".
LOG "SET app_list TO LIST(LIST("Orbital_Data_prg_data.", "Maths_In_Space_prg_data.", "Kerbo_OS_documentation_prg_data.", "AS_help_prg_data"), 
LOG "set appstore to true." TO Kerbo_OS_appstore.ks.
LOG "set page to 1." TO Kerbo_OS_appstore.ks.
LOG "IF page = 1 {" TO Kerbo_OS_appstore.ks.
LOG "until appstore = false {" TO Kerbo_OS_appstore.ks.
LOG "	print "App		Install key press"." TO Kerbo_OS_appstore.ks.
LOG "	print "Orbital Data			[1]"." TO Kerbo_OS_appstore.ks.
LOG "	print "Page Number: " + page." TO Kerbo_OS_appstore.ks.
LOG "	print "More coming soon"." TO Kerbo_OS_appstore.ks.
LOG "	print "Back to desktop		[0]"." TO Kerbo_OS_appstore.ks.
LOG "	ON AG1 {" TO Kerbo_OS_appstore.ks.
LOG "		set prg to app_list[page-1][0]." TO Kerbo_OS_appstore.ks.
LOG "		set appstore to false." TO Kerbo_OS_appstore.ks.
LOG "		run prg." TO Kerbo_OS_appstore.ks.
LOG "	}" TO Kerbo_OS_appstore.ks.
LOG "	ON AG0 {" TO Kerbo_OS_appstore.ks.
LOG "		set appstore to 0." TO Kerbo_OS_appstore.ks.
LOG "		run Kerbo_OS_desktop." TO Kerbo_OS_appstore.ks.
LOG "	}" TO Kerbo_OS_desktop.ks.
LOG "}" TO Kerbo_OS_appstore.ks.
LOG "}" TO Kerbo_OS_appstore.ks.
print "App store has completed installing...".
print "Installing installation programs".
LOG "CREATE Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "set data to true." TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "UNTIL data = false {" TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "print "Time: " + TIME:CLOCK + " on " + TIME:CALENDAR. TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "print "Periapsis: " + ROUND(periapsis/1000, 1) + " Km". TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "print "Apoapsis: " + ROUND(apoapsis/1000, 1)  + " Km". TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "print "Inclination: " + ROUND(inclination, 2) + " Degrees". TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "print "Orbital Period: " + ROUND(((period/60)/1.6)*10, 1) + " seconds". TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "ON AG0 {" TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "	set data to false." TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "	run Kerbo_OS_desktop." TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "}" TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "wait 0.1." TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "clearscreen." TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
LOG "LOG "}" TO Orbital_Data.ks." TO Orbital_Data_prg_data.ks.
print "Installing settings files...".
CREATE settings_saved.ks.
LOG "set setup to true." TO settings.ks.
LOG "UNTIL settup = false {" TO settings.ks.
LOG "print "settings:"." TO settings.ks.
LOG "print "update kOS-OS		[1]"." TO settings.ks.
LOG "print "Re-install kOS-OS	[2]"." TO settings.ks.
LOG "wait 0.1." TO settings.ks.
LOG "clearscreen." TO settings.ks.
LOG "ON AG1 {"
LOG "	IF EXISTS update_file {" TO settings.ks.
LOG "		run update_file." TO settings.ks.
LOG "	}" TO settings.ks.
LOG "}" TO settings.ks.
LOG "}" TO settings.ks.
print "SETTUP complete! auto starting kOS-OS".
run Kerbo_OS_desktop.