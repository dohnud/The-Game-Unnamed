function god_create() {
	enum_init(); //initialize all of the states

	//screen shake
	shake = false; //shake true or false
	shakeDur = 5; //how long the shake lasts
	shakeForce = 1;

	//freeze/hitstop
	gameSpeed = 1; //used for hitstop/freeze
	freeze = false; //freeze true or false
	freezeDur = 5; //how long the freeze lasts

	//debug
	showBox = false; //used to show hitboxes
	pause = false;



}
