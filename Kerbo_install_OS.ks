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
print "installing the login system...".
print "Enter your wanted password".
set password_accepted to false.
set password_full to "".
set stopped to 0.
clearscreen.
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
print "Kerbo OS is performing first time load up please wait a while...".
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
LOG "print "Orbital data (AG1)"." TO Kerbo_OS_desktop.ks.
LOG "print "Settings (AG2)"." TO Kerbo_OS_desktop.ks.
LOG "print "File Viewer (AG3)"." TO Kerbo_OS_desktop.ks.
LOG "print "KOS configurator (AG4)"." TO Kerbo_OS_desktop.ks.
LOG "print "PEGAS auto-writer tool (AG5)"." TO Kerbo_OS_desktop.ks.
LOG "IF programmer_mode = 1 {" TO Kerbo_OS_desktop.ks.
LOG "	print "Kerbo OS documentation (web page) (AG6)"." TO Kerbo_OS_desktop.ks.
LOG "}" to Kerbo_OS_desktop.ks.
LOG "IF science_mode = 1 {" TO Kerbo_OS_desktop.ks.
LOG "	print "Science tools (AG7)"." TO Kerbo_OS_desktop.ks.
LOG "}" TO Kerbo_OS_desktop.ks.
LOG "Print "Kerbo OS-Personal V." + OS_Version + notation." to Kerbo_OS_desktop.ks.
LOG "Print "these are all not implimented as this is acctualy just a tech demo."." to Kerbo_OS_desktop.ks.
LOG "ON AG1 {" to Kerbo_OS_desktop.ks.
LOG "	Orbitaldata()." to Kerbo_OS_desktop.ks.
LOG "}" to Kerbo_OS_desktop.ks.
LOG "ON AG2 {" to Kerbo_OS_desktop.ks.
LOG "	WIP." to Kerbo_OS_desktop.ks.
LOG "}" to Kerbo_OS_desktop.ks.
LOG "ON AG3 {" to Kerbo_OS_desktop.ks.
LOG "	WIP." to Kerbo_OS_desktop.ks.
LOG "}" to Kerbo_OS_desktop.ks.
LOG "ON AG4 {" to Kerbo_OS_desktop.ks.
LOG "	WIP." to Kerbo_OS_desktop.ks.
LOG "}" to Kerbo_OS_desktop.ks.
LOG "ON AG5 {" to Kerbo_OS_desktop.ks.
LOG "	WIP." to Kerbo_OS_desktop.ks.
LOG "}" to Kerbo_OS_desktop.ks.
LOG "ON AG6 {" to Kerbo_OS_desktop.ks.
LOG "	print "Documentation: N/A"." to Kerbo_OS_desktop.ks.
LOG "}" to Kerbo_OS_desktop.ks.
LOG "ON AG7 {" to Kerbo_OS_desktop.ks.
LOG "	print "Science tools WIP"." to Kerbo_OS_desktop.ks.
LOG "}" to Kerbo_OS_desktop.ks.
LOG "clearscreen.".
LOG "}" to Kerbo_OS_desktop.ks.
LOG "FUNCTION Orbitaldata {" to Kerbo_OS_desktop.ks.
LOG "	print "Apoapsis: " + ROUND(apoapsis/1000, 1) + " Km"." to Kerbo_OS_desktop.ks.
LOG "	print "periapsis: " + ROUND(periapsis/1000, 1) + " Km"." to Kerbo_OS_desktop.ks.
LOG "	print "Inclination: " + inclination + " Degrees"." to Kerbo_OS_desktop.ks.
LOG "}" to Kerbo_OS_desktop.ks.