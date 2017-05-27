pragma solidity ^0.4.0;

contract MyTestContract {
    uint valueX;
    
    // My constructor
    function MyTestContract() {
       // init with value 100 everytime
       valueX = 100;
    }
    
    function setValueX(uint val) {
        // overriding value
        valueX = val;
    }
    
    function  getValueX() constant returns(uint) {
        //returns value
        return valueX;
    }
    
    
}
