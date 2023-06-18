// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.9;

contract Fallbakc {
    event Events(string text,address sender, uint256 amount);

    receive() external payable {
        emit Events("Receive",msg.sender, msg.value);
    }

    fallback() external payable {
        emit Events("Fallback",msg.sender,msg.value);
    }

    function balance() public view returns (uint256) {
        return address(this).balance;
    }
}
