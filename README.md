# VaultApp
This is a basic Ethereum smart contract I built using Solidity. It's a simple vault system where users can deposit and withdraw ETH. I used Remix IDE to write, compile, and test the contracts.

The goal of this project was to practice:
- Using Solidity libraries
- Emitting events
- Using require checks
- Inheritance between contracts

---

## What this smart contract does

This contract lets anyone:
- Add ETH to their vault
- Withdraw ETH from their vault
- Check how much ETH they have saved

The vault keeps track of each user's balance separately.

---

## Files in this project

### 1. `mathLib.sol`
This is a small math library I wrote. It has two functions:
- `plus()` – safely adds two numbers
- `minus()` – safely subtracts one number from another

I used this library instead of normal `+` or `-` to avoid math errors (like overflows or underflows).

---

### 2. `vaultBaseContract.sol`
This is the base contract. It has:
- A mapping that stores how much ETH each address has
- Two events: one for when ETH is added, and one for when it’s taken out

This contract does not have the deposit or withdraw logic. That’s in the next file.

---

### 3. `myVaultApp.sol`
This is the main contract that users interact with. It inherits from `vaultBaseContract`. It has:
- `addMoney()` – for adding ETH to the vault (must be more than 0)
- `takeMoney()` – for taking ETH out of the vault (must not be more than what the user has)

I used `require()` to make sure users don't deposit 0 ETH or withdraw more than they have.

---

## How I tested it in Remix

1. Opened Remix at https://remix.ethereum.org
2. Created 3 files with the code from above
3. Compiled `myVaultApp.sol`
4. Went to the "Deploy & Run Transactions" tab
5. Selected `Remix VM (Prague)` as environment
6. Made sure `Value` was set to 0 when deploying (no ETH sent to constructor)
7. Deployed `myVaultApp`
8. Set `Value` to `1` and clicked `addMoney()` to deposit 1 ETH
9. Used `savedAmounts(address)` to check how much ETH I saved
10. Called `takeMoney(1000000000000000000)` to withdraw 1 ETH (in wei)

Everything worked as expected.

---

## 📷 Screenshot from Remix

Here’s what the contract and deployment look like in Remix:

![Remix Contract Screenshot](https://github.com/hemapriya-kanagala/VaultApp/blob/main/Remix%20Screenshot.png?raw=true)

---

Thanks for checking out my project!
