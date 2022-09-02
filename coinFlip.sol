// SPDX-License-Identifier: MIT
pragma solidity >0.8.4;
    contract flipCoin {
        uint public amount;
        uint public randNonce=0;

    //For Deposit to Contract
    function depToContract()external payable returns (bool){
        amount+=msg.value;
        return true;
    }
   
    // Generate a random number between 1 and 100:
    // if random value >90 <100 then user win otherwise fail
    function FlipCoin()external payable{
        
        uint random = uint(keccak256(abi.encodePacked(msg.value, msg.sender, block.timestamp))) % 100;
        randNonce++;    
    
    if(random>90){
        address payable  someone = payable(msg.sender);
        someone.transfer(msg.value*2);  
    }
    
    else{
        
        amount+=msg.value;   
    }
  
}

}
