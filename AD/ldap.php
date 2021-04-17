<?php

	$ldap_dn = $_POST["username"];
	$ldap_password = $_POST["password"];
	$ldap_con = ldap_connect("ldap://itskills.local");
	ldap_set_option($ldap_con, LDAP_OPT_PROTOCOL_VERSION, 3);
	$ldapbind=ldap_bind($ldap_con,$ldap_dn,$ldap_password);
	if ($ldapbind) {
    		print("\n logged in! \n\n");
	} else {
    		print("\n log on failure \n\n");
	}

?>
