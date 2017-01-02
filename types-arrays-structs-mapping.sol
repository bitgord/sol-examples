contract owned {
    bool myBool;
    uint8 myUint8;
    uint myUint256;
    bytes32 myBytes32;
    bytes myBytes;
    string myString;
    
    function owned() {
        myBool = true;
        myUint8 = 255;
        myUint256 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        
        myBytes32 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        myString = "ABC";
    }
    
    function setMyString(string mystring) {
        myString = mystring;
    }
    
    function getMyBytes32() constant returns (bytes32) {
        return myBytes32;
    }
    
    function getMyUint256() constant returns (uint256) {
        return myUint256;
    }
}
