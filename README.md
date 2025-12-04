# Ownable Smart Contract

A simple Solidity smart contract demonstrating **ownership**, **access control**, and **restricted function execution**.  
This project is deployed and tested using **Remix IDE** and **MetaMask** on the **Sepolia Test Network**.

---

## 🚀 Features

- ✔ Owner-based access control  
- ✔ `onlyOwner` modifier for restricted functions  
- ✔ Ability to transfer ownership securely  
- ✔ Public and restricted example functions  
- ✔ Clean and easy-to-understand Solidity code  

---

## 📁 Contract Code

The full smart contract is contained in:

### MyContract.sol


It includes:
- `owner` state variable  
- `onlyOwner` modifier  
- `setOwner()` function  
- `onlyOwnerCanAccess()` restricted function  
- `anyOneCanAccess()` public function  

---

## 🧪 How to Deploy (Remix + MetaMask)

### 1. Open Remix IDE  
https://remix.ethereum.org

### 2. Create a new file  
`MyContract.sol`

### 3. Paste the contract code

### 4. Compile
- Select compiler version **0.8.0 or above**
- Click **Compile**

### 5. Deploy
- Open “Deploy & Run”
- Select **Injected Provider – MetaMask**
- Select **Sepolia Test Network**
- Click **Deploy**
- Confirm the MetaMask transaction

---

## 🔧 Interaction After Deployment

| Function | Description |
|---------|-------------|
| `owner()` | Returns current owner |
| `setOwner(address)` | Transfers ownership (owner only) |
| `onlyOwnerCanAccess()` | Callable only by owner |
| `anyOneCanAccess()` | Callable by anyone |
| `getStoredValue()` | Returns stored value |

---

## 🦊 MetaMask Setup

1. Install MetaMask extension  
2. Create wallet  
3. Enable **Show Test Networks**  
4. Select **Sepolia**  
5. Get test ETH from a faucet (I can provide links)

---

## 📜 License

This project is licensed under the **MIT License**.

---

## 🙌 Author

**Anusha Bennal**  
Smart Contract Developer | Blockchain Enthusiast  
