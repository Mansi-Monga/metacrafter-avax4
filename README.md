# metacrafter-avax4

---

# DegenToken - An ERC20 Token for Degen Gaming on the Avalanche Network

## Introduction

**DegenToken** is an ERC20 token developed for **Degen Gaming**, a renowned game studio aiming to enhance player loyalty and retention by integrating blockchain technology into their gaming ecosystem. The token is deployed on the Avalanche network, known for its high throughput and low transaction fees, making it ideal for gaming applications.

## Project Overview

The DegenToken project involves creating a unique ERC20 token that can be earned by players in Degen Gaming's ecosystem. These tokens can be used to purchase in-game items and can be traded with other players, creating a vibrant and dynamic in-game economy.

### Key Features

1. **Minting New Tokens**: Only the owner (Degen Gaming) can mint new tokens to reward players.
2. **Transferring Tokens**: Players can transfer tokens to other players.
3. **Redeeming Tokens**: Tokens can be redeemed for in-game items.
4. **Checking Token Balance**: Players can check their token balance at any time.
5. **Burning Tokens**: Players can burn tokens they no longer need.

## Smart Contract

The smart contract is written in Solidity and follows the ERC20 standard to ensure compatibility with a variety of wallets and exchanges.

### Contract Code

The smart contract code is as follows:

```solidity
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
```

### Deployment

To deploy the smart contract on the Avalanche network, use the following steps:

1. **Configure MetaMask**: 
   - Add the Avalanche network to MetaMask.
   - Ensure you have enough AVAX for gas fees.

2. **Deploy using Remix IDE**:
   - Set the environment to `Injected Provider - MetaMask`.
   - Compile the contract and deploy it.

3. **Interact with the Contract**:
   - Use the Remix interface to call functions such as `mint`, `transfer`, `redeem`, `burn`, and `balanceOf`.

### Gas Estimation

The gas estimation process helps ensure that you have enough AVAX to cover transaction fees. Follow these steps to estimate gas in Remix:

1. **Compile the Contract**: Ensure there are no compilation errors.
2. **Deploy the Contract**: Note the estimated gas cost provided by Remix.
3. **Interact with Functions**: Estimate gas for each function call (e.g., `mint`, `transfer`).

## Troubleshooting

### Common Issues

1. **Insufficient Funds**: Ensure your MetaMask wallet has enough AVAX.
2. **Network Configuration**: Double-check that MetaMask is connected to the Avalanche C-Chain.
3. **Contract Interaction Errors**: Ensure that the correct parameters are provided and the contract is deployed correctly.

### Gas Estimation Errors

If you encounter gas estimation errors, ensure that your account has sufficient AVAX and try increasing the gas limit slightly to account for network fluctuations.

## Conclusion

DegenToken aims to revolutionize in-game economies by providing a robust, blockchain-based token system that rewards players and enhances engagement. By leveraging the capabilities of the Avalanche network, Degen Gaming can offer a seamless and efficient gaming experience.

## License

This project is licensed under the MIT License.

## Acknowledgements

- [OpenZeppelin](https://openzeppelin.com/) for their ERC20 implementation.
- [Avalanche](https://www.avax.network/) for providing a high-performance blockchain platform.
- [Remix IDE](https://remix.ethereum.org/) for a powerful smart contract development environment.

---

Feel free to modify and expand upon this content to better fit the specifics of your project and to provide additional details where necessary.
