pragma solidity ^0.4.0;

contract MyTestContract {
    uint valueX;
    
    // My constructor
    function MyTestContract() payable {
       // init with value 100 everytime
       valueX = 100;
    }
    
    function setValueX(uint val) {
        // overriding value
        
        uint aftercommision = calculateCommision(val);
        valueX = aftercommision;
    }
    
    function  getValueX() constant returns(uint) {
        //returns value
        return valueX;
    }
    
    function calculateCommision(uint val) constant returns(uint) {
        return (val*99)/100;
    }
    
    function transferValue(uint val, address to)  returns(uint) {
        uint targetCurrentValue = to.balance;
        if(this.balance > val) {
            to.transfer(val);
            valueX = valueX - val;
        }
        
        valueX = valueX - 1990;
        targetCurrentValue = to.balance;
        return targetCurrentValue;
    }
    
    function myBalance() constant returns(uint) {
        return this.balance;
    }
    
    function() payable {
        
    }
}
