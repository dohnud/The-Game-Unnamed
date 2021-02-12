// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function trackButtons(){
		atkLPhold = atkLP;
		atkMPhold = atkMP;
		atkHPhold = atkHP;
		atkLKhold = atkLK;
		atkMKhold = atkMK;
		atkHKhold = atkHK;
		
		atkLP = keyboard_check(ord("U"));
		atkMP = keyboard_check(ord("I"));
		atkHP = keyboard_check(ord("O"));
		atkLK = keyboard_check(ord("J"));
		atkMK = keyboard_check(ord("K"));
		atkHK = keyboard_check(ord("L"));
		
		atkLPtap = atkLP && !atkLPhold;
		atkMPtap = atkMP && !atkMPhold;
		atkHPtap = atkHP && !atkHPhold;
		atkLKtap = atkLK && !atkLKhold;
		atkMKtap = atkMK && !atkMKhold;
		atkHKtap = atkHK && !atkHKhold;
		
}