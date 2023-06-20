// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Ownable {
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    event changeOwner(address indexed oldOwner, address indexed newOwner);

    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "Sender's address does not match the contract owner"
        );
        _;
    }

    
    function _transferOwnership(address _newOwner) internal{
        require(_newOwner != address(0),"New owner is the zero address");
        emit changeOwner(owner , _newOwner);
        owner = _newOwner;
    }
   
    function transferOwnership(address _newOwner) public onlyOwner {
        _transferOwnership(_newOwner);
    }

    function getOwner() view public returns (address) {
        return owner;
    }
}
