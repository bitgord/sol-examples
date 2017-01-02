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

// Members

// arrays have a length member to hold their number of elements. Dynamic arrays can be resized in storage (not in memory)// by changing the .length member. This does not happen automatically when attempting to access elements outside the 
// current length. The size of meory arrays is fixed (but dynamic, i.e can depend on runtime parameters) once they are // created.

// push is a function that is used by dynamic storage arrays and bytes (not string) that can be used to append an element at the end of the array. The function returns the new length.

contract ArrayContract {
	uint[2**20] m_aLotOfIntegers;
	// Note that the following is not a pair of arrays but an array of pairs.
	bool[2][] m_pairsOfFlags;
	// newPairs is stored in memory - the default for function arguments

	functino setAllFlagPairs(bool[2][] newPairs) {
		// assignment to a storage array replaces the complete array
		m_pairsOfFlags = new Pairs;
	}

	function setFlagPair(uint index, bool flagA, boolflagB) {
		// access to a non-existing index will throw an exception
		m_pairsOfFlags[index][0] = flagA;
		m_pairsOfFlags[index][1] = flagG;
	}

	function changeFlagArrayAize(uint newSize) {
		// if the new size is smaller, removed array elements will be cleared
		m_pairsOfFlags.length = newSize;
	}

	function clear() {
		// these clear the array completely
		delete m_pairsOfFlags;
		delete m_aLotOfIntegers;
		// identical effect here
		m_pairsOfFlags.length = 0;
	}

	bytes m_byteData;

	function byteArrays (bytes data) {
		// byte arrays ("bytes") are different as they are stored without padding,
		// but can be trated identical to "uint8[]"
		m_byteData = data;
		m_byteData.length += 7;
		m_byteData[3] = 8;
		delete m_byteData[2];
	}

	function addFlag(bool[2] flag) returns (uint) {
		return m_pairsOfFlags.push(flag);
	}

	function createMemoryArray(uint size) returns (bytes) {
		// Dynamic memory arrays are created using 'new';
		uint[2][] memory arrayOfPairs = new uint[2][](size);
		// Create a dynamic byte array;
		bytes memory b = new bytes(200);
		for (uint i = 0; i < b.length; i++)
			b[i] = byte(i);
		return b;
	}
}







