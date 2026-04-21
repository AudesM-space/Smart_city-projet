// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EnergyGrid {
    struct Transfer {
        uint256 timestamp;
        uint256 sellerId;
        uint256 buyerId;
        uint256 amountWh;
    }

    Transfer[] public transfers;

    function recordTransfer(uint256 _seller, uint256 _buyer, uint256 _amount) public {
        transfers.push(Transfer(block.timestamp, _seller, _buyer, _amount));
    }

    function getTransferCount() public view returns (uint256) {
        return transfers.length;
    }
}
