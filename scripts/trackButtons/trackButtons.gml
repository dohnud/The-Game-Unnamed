// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function trackButtons(){
		atkLPhold = atkLP;
		atkMPhold = atkMP;
		atkHPhold = atkHP;
		atkLKhold = atkLK;
		atkMKhold = atkMK;
		atkHKhold = atkHK;
		
		atkLP = lp;
		atkMP = mp;
		atkHP = hp;
		atkLK = lk;
		atkMK = mk;
		atkHK = hk;
		
		atkLPtap = atkLP && !atkLPhold;
		atkMPtap = atkMP && !atkMPhold;
		atkHPtap = atkHP && !atkHPhold;
		atkLKtap = atkLK && !atkLKhold;
		atkMKtap = atkMK && !atkMKhold;
		atkHKtap = atkHK && !atkHKhold;		
}