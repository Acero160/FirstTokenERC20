# ConquerERC20 - An ERC20 Token with Maximum Supply Control

This repository contains a smart contract written in Solidity for an ERC20 token called **Dubai ERC20 (DXB)**. The token implements custom features such as a maximum supply limit, the ability to mint and burn tokens, and leverages OpenZeppelin libraries for enhanced security and reliability.

## 📜 Contract Overview

### Key Features

1. **Name and Symbol**:
   - Name: Dubai ERC20
   - Symbol: DXB

2. **Maximum Supply**:
   - The token has a fixed maximum supply defined during deployment, which cannot be exceeded.

3. **Minting Tokens**:
   - Only the contract owner can mint new tokens, adhering to the maximum supply limit.

4. **Burning Tokens**:
   - Any user can burn their own tokens, reducing the circulating supply.

5. **Powered by OpenZeppelin**:
   - The contract inherits from OpenZeppelin's secure and battle-tested libraries:
     - [`ERC20`](https://docs.openzeppelin.com/contracts/4.x/erc20)
     - [`Ownable`](https://docs.openzeppelin.com/contracts/4.x/access-control)

### Key Variables and Events

- **Variables**:
  - `_maxSupply`: Defines the maximum number of tokens that can ever be minted.

- **Events**:
  - `MintDubaiERC20(address indexed account, uint256 amount)`: Emitted when tokens are minted.
  - `BurnDubaiERC20(address indexed account, uint256 amount)`: Emitted when tokens are burned.

## 🚀 Implementation

### Constructor

The contract is initialized with the following parameters:
- **_maxSupply**: The total supply limit for the token.
- Sets the deployer as the initial owner of the contract.

### Main Functions

1. **Mint (`mint`)**:
   - Parameters: 
     - `address account`: Recipient's address.
     - `uint256 value`: Amount of tokens to mint.
   - Requirements:
     - Only the contract owner can call this function.
     - The total token supply after minting must not exceed `_maxSupply`.

2. **Burn (`burn`)**:
   - Parameters:
     - `uint256 value`: Amount of tokens to burn.
   - Allows any user to burn their own tokens, reducing the circulating supply.

3. **Maximum Supply (`_maxSupply`)**:
   - Defines the total token supply limit and is immutable after deployment.

## 🛠️ Usage

### Prerequisites

1. **Install Dependencies**:
   Ensure you have [Node.js](https://nodejs.org/) and [Hardhat](https://hardhat.org/) installed.

2. **Install OpenZeppelin**:
