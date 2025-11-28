// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IReceipts {
    function withdraw(address to, uint256 amount) external;
    function checkBalance(address user) external view returns (uint256);
    function processPayment(address from, address to, uint256 amount) external;
}