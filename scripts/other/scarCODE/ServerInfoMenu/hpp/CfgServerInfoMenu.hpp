class CfgServerInfoMenu
{
   addAction = 1; // Enable/disable action menu item | use 0 to disable | default: 1 (enabled)
   antiHACK = "BattlEye deaktiviert";
   hostedBy = "GEF - German Forces";
   ipPort = "185.101.95.105:2302";
   openKey = "User7"; // https://community.bistudio.com/wiki/inputAction/actions
   openAtLogin = yes;
   restart = 6; // Amount of hours before server automatically restarts
   serverName = "[GER] GEF ARMA 3 COOP ALIVE - PUBLIC";
   class menuItems
   {
      // title AND content accept formatted text ( since update Oct5.2016 )
      class first
      {
         menuName = "General";
         title = "<t color='#ffffff'>GENERAL INFORMATION</t>";
         content[] = {
            "This is some placeholder text"
         };
      };
      class second
      {
         menuName = "Rules";
         title = "SERVER RULES";
         content[] = {
            "<t size='1.75'>Rule #1</t><br />Players/admins are NOT permitted to show racism, profanity and disrespect towards any other player/admin in this server.<br />",
            "<t size='1.75'>Rule #2</t><br />No voice transmission over side chat. Adjust your control settings to prevent doing it by accident.<br />"
         };
      };
      class third
      {
         menuName = "Logistik";
         title = "Logistik Anleitung";
         content[] = {""};
      };
      class fourth
      {
         menuName = "Admins";
         title = "ADMINISTRATORS";
         content[] = {"neslane, Irreversible, Oktris"};
      };
      class fifth
      {
         menuName = "Scripts";
         title = "INSTALLED SCRIPTS";
         content[] = {""};
      };
      class sixth
      {
         menuName = "Communication";
         title = "VOICE SERVER AND WEBSITE";
         content[] = {
            "<t size='1.25'>TeamSpeak:</t> 185.101.95.105",
            "<br />",
            "<t size='1.25'>Chat:</t> http://gef-gaming.flock.com",
            "<br />",
            "<t size='1.25'>Website:</t> http://185.101.95.105"
         };
      };
      class seventh
      {
         menuName = "Credits";
         title = "CREDITS WHERE CREDITS DUE";
         content[] = {
            "<t size='1.25'>IT07:</t> coder/creator of this menu",
            "<br />",
            "<t size='1.25'>Name:</t> blablabla"
         };
      };
   };
};
