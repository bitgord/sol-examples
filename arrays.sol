// Allocating Memory Arrays

contract C {
	function f(uint len) {
		uint[] memory a = new uint[](7);
		bytes[] memory b = new bytes[](len);
		// Here we have a.length == 7 and b.length == len
		a[6] = 8;
	}	
}

// Array Literals / Inline Arrays

contract C {
	function f() {
		g([uint(1), 2, 3]);
	}
	function g(uint[3] _data) {
		// ...
	}
}