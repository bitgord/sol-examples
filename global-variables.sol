// Here is a list of special variables that are always available in sol and are used to provide information about the 
// blockchain

block.blockhash(uint blockNumber) returns (bytes32) // hash of the given block (only works for most recent 256 blocks)
block.coinbase(address) // current block miners address
block.difficulty(uint) // current block difficulty
block.gasLimit(uint) // current block gaslimit
block.number(uint) // current block number
block.timestamp(uint) // current block timestamp
msg.data(bytes) // complete callback
msg.gas(uint) // remaining gas
msg.sender(address) // address of the sender of the message (current call)
msg.sig(bytes32) // first fout bytes of the callback (i.e function identifier)
msg.value(uint) // number of wei sent with the message
now(uint) // current block timestamp (alias for block.timestamp)
tx.gasprice(uint) // gas price of the transaction
tx.origin(address) // sender of the transaction (full chain call)
