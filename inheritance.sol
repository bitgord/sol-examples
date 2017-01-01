contract owned {
	function owned() { owner = msg.sender; }
	address owner;
}

contract mortal is owned {
	function kill() {
		if (msg.sender == owner) selfdestruct(owner);
	}
}

contract Config {
	function lookup(uint id) returns (address adr);
}

contract NameReg {
	function register(bytes32 name);
	function unregister();
}