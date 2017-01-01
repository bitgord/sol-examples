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

     function getWhile() constant returns (uint){
        uint i = 0;
        while(i < 5) {
            i++;
        }
        return i;
    }
}
