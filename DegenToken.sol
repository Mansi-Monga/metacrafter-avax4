// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DegenToken is ERC20 {
    constructor() ERC20("DegenToken", "DGN") {}

    // Function to mint new tokens, unrestricted
    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }

    // Function to redeem tokens, assuming an external in-game store contract
    function redeem(address store, uint256 amount) external {
        _transfer(msg.sender, store, amount);
        // Add logic to interact with the in-game store contract if needed
    }

    // Function to burn tokens
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}


