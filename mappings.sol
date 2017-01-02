contract mappings {
	// Mappint types are declared as mapping
	// _KeyType => _ValueType, where _KeyType
	// can be almost any type except for a mapping
	// and _ValueType can actually be an type, including mappings.

	mapping (uint => bool) myMapping;

	function mappings() {
		myMappings[0] = true;
	}

	function getMyMappings(uint position) constant returns (bool) {
		return myMapping[position];
	}
}