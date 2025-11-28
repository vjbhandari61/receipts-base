// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import "./interfaces/IReceipts.sol";

contract ReceiptsV1 is 
    Initializable,
    UUPSUpgradeable,
    OwnableUpgradeable,
    PausableUpgradeable,
    ReentrancyGuardUpgradeable,
    IReceipts
{
    IERC20 public stableCoinToken;
    mapping(address => uint256) private balances;

    function initialize(address tokenAddress) public initializer {
        __Ownable_init(msg.sender);
        __Pausable_init();
        __ReentrancyGuard_init();
        stableCoinToken = IERC20(tokenAddress);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    function withdraw(address to, uint256 amount) external override whenNotPaused nonReentrant {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        require(stableCoinToken.transfer(to, amount), "Token transfer failed");
    }

    function checkBalance(address user) external view override returns (uint256) {
        return balances[user];
    }

    function processPayment(address from, address to, uint256 amount) external override whenNotPaused nonReentrant {
        require(stableCoinToken.transferFrom(from, address(this), amount), "Token transfer failed");
        balances[to] += amount;
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }
}