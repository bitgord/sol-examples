contract owned {
	function owned() { owner = msg.sender; }
	address owner;	
}

contract mortal is owned {
	function kill() {
		if (msg.sender == owner) selfdestruct(owner);
	}
}

contract Base1 is mortal {
	function kill() { /* do cleanup 1 */ super.kill(); }
}

contract Base2 is mortal {
	function kill() { /* do cleanup 2 */ super.kill(); }
}

contract Final is Base1, Base2 {
	
}