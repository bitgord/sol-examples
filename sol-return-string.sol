contract SomeContract {
    uint someVar;
    
    function getMyVar() constant returns (string, uint) {
        if(someVar > 2) {
            return ("greater two", someVar);
        } else if(someVar == 2) {
            return ("is exactly two", someVar);
        } else {
            return ("is smaller two", someVar);
        }
    }
    
    function setMyVar(uint myVar) {
        someVar = myVar;
    }
}
