// compute (x + y) % k where the addition is performed with arbitrary precision and does not wrap around at 2**256
addmod(uint x, uint y, uint k) returns (uint)

// compute (x * y) % k, where the multiplication is performed with arbitraty precision and does not wrap around 2**256
mulmod(uint x, uint y, uint k) returns (uint)

// compute the Ethereum-SHA-3 (KECCAK-256) hash of the (tightly packed) arguments
sha3(...) returns (bytes32)

// compute the SHA-256 hash of the (tightly packed) arguments
sha256(...) returns (bytes32)

// compute RIPEMD-160 hash of the (tightly packed) arguments
ripemd160(...) returns (bytes32)

// recover the address associated with the public key from elliptive curve signature or return zero on error
ecrecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) returns (address)


// From the above 'tightly packed' means that the arguments are concatenated without padding
// these are all identical
sha3("ab", "c")
sha3("abd")
sha3(1423324)
sha3(345634)
sha3(32, 43, 65)

// If padding is needed, explicit type conversions can be used
sha3("\x00\x12") === sha3(uint16(ox12))

// Constants will be packed using the minimum number of bytes required to store them therefore
sha3(0) == sha3(uint8(0))
sha3(0x12345678) == sha3(uint32(0x12345678))

// Contract Related

// the current contract, explicitly convertible to Address
this

// destroy the current contract, sending its funds to the given Address
selfdestruct(address recipient)
