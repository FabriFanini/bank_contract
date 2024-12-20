# Solidity Exercise 1 - Bank Contract

This Solidity contract simulates a basic banking system. Users can deposit funds, check their balance, and transfer funds to other accounts. The contract uses a mapping to keep track of user balances and includes event logging for transfers.

## Features

The contract implements the following features:

### Add Balance
- Users can add funds to their account by specifying an amount.

### Check Balance
- Users can check their current balance.

### Transfer Funds
- Users can transfer a specified amount to another address.
- Transfer events are logged for tracking.

## How to Deploy and Test

### Platform Recommendation
Use [Remix IDE](https://remix.ethereum.org/) for deploying and testing the contract.

### Deployment Steps
1. Copy the Solidity code into a new file in Remix (e.g., `Bank.sol`).
2. Compile the contract using the Solidity compiler.
3. Deploy the contract using a test blockchain environment like Remix’s JavaScript VM.

### Testing the Contract
1. Use the `addBalance` function to deposit funds into your account.
2. Use the `getBalance` function to check your current balance.
3. Call the `transfer` function to send funds to another account.
4. Observe the `Transfer` event logs to confirm successful transactions.

## Notes

The contract is designed for educational purposes and lacks robust security features.

### Future improvements could include:
- Adding safeguards to prevent overdraft.
- Implementing access controls and authentication.
- Enhancing logging for better auditability.

