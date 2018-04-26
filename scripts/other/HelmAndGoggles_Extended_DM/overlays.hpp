class VQI_HALO_HELMET_CLASSII
{
	idd = -1;
	movingEnable = 0;
	duration = 99999;
	fadein = 0;
	fadeout = 5;
	name = "HALO HELMET";
	controls[] = {"VQI_HALO_HELMET","VQI_HALO_HELMET_VISOR"};

	class VQI_HALO_HELMET {
	idc = -1;
	type = 0;
	style = 48;
	text = "scripts\other\HelmAndGoggles_Extended_DM\overlays\HALO_GOGGLES_x1.paa";
	colorBackground[] = {1,1,1,1};
	colorText[] = {1,1,1,1};
	font = "EtelkaMonospaceProBold";
	sizeEx = 0.05;
	x = safezoneX;
	y = safezoneY;
	w = safezoneW;
	h = safezoneH;
	};
	class VQI_HALO_HELMET_VISOR
	{
	idc=1111;
	type=0;
	style = 48;
	text = "scripts\other\HelmAndGoggles_Extended_DM\overlays\HALO_GOGGLES_xFROSTpa.paa";
	colorBackground[] = {1,1,1,1};
	colorText[] = {1,1,1,0.1};
	font = "PuristaMedium";
	sizeEx = 0.05;
	x = safezoneX;
	y = safezoneY;
	w = safezoneW;
	h = safezoneH;
	};
};


// not used
class VQI_HALO_HELMET_FOGGED0_EFX
{
	idd = -1;
	movingEnable = 0;
	duration = 5;
	fadein = 1;
	fadeout = 10;
	name = "HALO HELMET FOG0";
	controls[] = {"FOGGED0"};

	class FOGGED0
	{
		Idc=-1;
		type=0;
		style = 48;
		text = "scripts\other\HelmAndGoggles_Extended_DM\overlays\HALO_GOGGLES_xFROSTpa.paa";
		colorBackground[] = {1,1,1,1};
		colorText[] = {1,1,1,0.6};
		font = "PuristaMedium";
		sizeEx = 0.05;
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH;
	};
};


class VQI_HALO_HELMET_FOGGED1_EFX
{
	idd = -1;
	movingEnable = 0;
	duration = 5;
	fadein = 5;
	fadeout = 25;
	name = "HALO HELMET FOG1";
	controls[] = {"FOGGED1"};

	class FOGGED1
	{
		Idc=-1;
		type=0;
		style = 48;
		text = "scripts\other\HelmAndGoggles_Extended_DM\overlays\HALO_GOGGLES_xFROSTpa.paa";
		colorBackground[] = {1,1,1,1};
		colorText[] = {1,1,1,0.5};
		font = "PuristaMedium";
		sizeEx = 0.05;
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH;
	};
};

class VQI_HALO_HELMET_FOGGED2_EFX
{
	idd = -1;
	movingEnable = 0;
	duration = 5;
	fadein = 5;
	fadeout = 65;
	name = "HALO HELMET FOG2";
	controls[] = {"FOGGED2"};

	class FOGGED2
	{
		Idc=-1;
		type=0;
		style = 48;
		text = "scripts\other\HelmAndGoggles_Extended_DM\overlays\HALO_GOGGLES_xFROSTpa.paa";
		colorBackground[] = {1,1,1,1};
		colorText[] = {1,1,1,0.7};
		font = "PuristaMedium";
		sizeEx = 0.05;
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH;
	};
};

class VQI_HALO_HELMET_ICE1_EFX
{
	idd = -1;
	movingEnable = 0;
	duration = 30;
	fadein = 15;
	fadeout = 30;
	name = "HALO HELMET ICE1";
	controls[] = {"ICED1"};

	class ICED1
	{
		Idc=-1;
		type=0;
		style = 48;
		text = "scripts\other\HelmAndGoggles_Extended_DM\overlays\HALO_GOGGLES_ice1.paa";
		colorBackground[] = {1,1,1,1};
		colorText[] = {1,1,1,0.2};
		font = "PuristaMedium";
		sizeEx = 0.05;
		x = safezoneX;
		y = safezoneY;
		w = safezoneW;
		h = safezoneH;
	};
};




class GasMask_OverlayPicture
{
	type=0;

	access=0;

	idc=-1;

	style=48;

	colorBackground[]={0,0,0,0};

	colorText[]={1,1,1,1};

	font="PuristaMedium";

	text="";

	sizeEx=0;

};


class GASMASKOVERLAY_CLASS
{
	idd = -1;
	movingEnable = 0;
	duration = 99999;
	fadein = 0;
	fadeout = 5;
	name = "GAS MASK";
	controls[] = {"GASMASKOVERLAY"};

	class GASMASKOVERLAY {
	idc = -1;
	type = 0;
	style = 48;
	text = "scripts\other\HelmAndGoggles_Extended_DM\overlays\GasMask_base.paa";
	colorBackground[] = {1,1,1,1};
	colorText[] = {1,1,1,1};
	font = "EtelkaMonospaceProBold";
	sizeEx = 0.05;
	x = safezoneX;
	y = safezoneY;
	w = safezoneW;
	h = safezoneH;
	};

};
