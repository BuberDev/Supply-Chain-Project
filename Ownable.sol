pragma solidity ^0.6.0;

contract Ownable {
    address public _owner;

    constructor () internal {
        _owner = msg.sender;
    }

    
    modifier onlyOwner() {
        require(isOwner(), "Ownable: caller is not the owner");
        _;
    }

    
    function isOwner() public view returns (bool) {
        return (msg.sender == _owner);
    }
}



Then modify the ItemManager so that all functions, that should be executable by the "owner only" have the correct modifier:



pragma solidity ^0.6.0;

import "./Ownable.sol";
import "./Item.sol";

contract ItemManager is Ownable {

    

    function createItem(string memory _identifier, uint _priceInWei) public onlyOwner {
 
    }

    function triggerPayment(uint _index) public payable {
      
    }

    function triggerDelivery(uint _index) public onlyOwner {
        
}
