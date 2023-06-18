// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.9;

contract Transfer {

    function tranferEther(address payable to,uint256 amount)public payable{
        to.transfer(amount);
    }

    event Receives(address sender, uint256 amount);

    receive() external payable {
        emit Receives(msg.sender, msg.value);
    }

    function balance() public view returns (uint256) {
        return address(this).balance;
    }
}

