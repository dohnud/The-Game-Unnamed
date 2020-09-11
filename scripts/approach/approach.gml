/// @description  Approach(start, end, shift);
/// @function  Approach
/// @param start
/// @param  end
/// @param  shift
function approach(argument0, argument1, argument2) {

	if (argument0 < argument1)
	    return min(argument0 + argument2, argument1); 
	else
	    return max(argument0 - argument2, argument1);



}
