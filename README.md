# 🏦 SimpleBank Smart Contract

## 📌 Overview
SimpleBank is a decentralized banking smart contract built on Ethereum using Solidity. It allows users to deposit Ether, check their balance, and withdraw funds securely.

---

## ⚙️ Technologies Used
- Solidity (Smart Contract Language)
- Remix IDE (Development & Testing)
- Ethereum Virtual Machine (EVM)

---

## 🧠 How It Works

### 🔹 Deposit
Users send Ether to the contract and their balance is updated.

### 🔹 Balance Tracking
Each user has a unique balance stored using:
```solidity
mapping(address => uint) balances;
```

---

## 💸 Withdraw Function (IMPORTANT)

### 📌 Logic
- Checks if user has enough balance
- Deducts balance first (security)
- Sends Ether back to user

### ⚠️ RULES WHEN TESTING IN REMIX
- VALUE field MUST be `0`
- Only ONE input is required (amount)

---

## 💰 Ether Units (Very Important)

```
1 ETH = 1000000000000000000 wei (10^18)
```

### Examples:
- 1 ETH = 1000000000000000000 wei  
- 0.5 ETH = 500000000000000000 wei  
- 4 ETH = 4000000000000000000 wei  

---

## 🧪 How to Test in Remix IDE

### 1. Compile Contract
- Open Remix IDE
- Compile SimpleBank.sol

### 2. Deploy Contract
- Select "JavaScript VM"
- Click Deploy

### 3. Deposit Ether
- Set VALUE: `1 ether`
- Call `deposit()`

### 4. Check Balance
- Call `getBalance()`

### 5. Withdraw Ether
- Set VALUE: `0`
- Enter amount:
  ```
  4 ether
  ```
  OR
  ```
  4000000000000000000
  ```
- Call `withdraw()`

---

## ❌ Common Errors

### Too many arguments error
Cause: Entering multiple values instead of one.

### Revert error
Cause: Insufficient balance or wrong VALUE field.

### Transaction failed
Cause: Trying to withdraw more than balance.

---

## 🚀 Future Improvements
- Add transaction history
- Add admin features
- Add interest system
- Build frontend (React + Web3)

---

## 👨‍💻 Author
SimpleBank Smart Contract Project – Learning Solidity & Ethereum basics.
