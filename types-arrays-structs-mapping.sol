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

contract test {
    enum ActionChoices { GoLeft, SoRight, GoStraight, SitStill }
    ActionChoices choice;
    Actionchoices constant defaultChoice = ActionChoices.GoStraight;

    function setGoStraight() {
        choice = ActionChoices.GoStraight;

        // Since enum types are not part of the ABI, the signature of "getChoice"
        // will automatically be changed to "getChoice() returns (uint8)"
        // for all matters external to Solidity. The integet types used is just
        // large enough to hold all enum values, i.e if you have more values,
        // "uint16" will be used and so on.
        function getChoice() returns (ActionChoices) {
            return  choice;
        }

        function getDefaultChoice() returns (uint) {
            return uint(defaultChoice);
        }
    }
}