// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {

    // Store balances of each user
    mapping(address => uint) private balances;

    // Event for deposit
    event Deposit(address indexed user, uint amount);

    // Event for withdrawal
    event Withdraw(address indexed user, uint amount);

    // Deposit Ether into the contract
    function deposit() public payable {
        require(msg.value > 0, "You must send some Ether");

        balances[msg.sender] += msg.value;

        emit Deposit(msg.sender, msg.value);
    }

    // Check your balance
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }

    // Withdraw Ether from the contract
    function withdraw(uint amount) public {
        require(amount > 0, "Enter valid amount");
        require(balances[msg.sender] >= amount, "Insufficient balance");

        // Update balance BEFORE transfer (security)
        balances[msg.sender] -= amount;

        payable(msg.sender).transfer(amount);

        emit Withdraw(msg.sender, amount);
    }
}