# Receipts ↗️  
**One QR. Accepts UPI from anyone. Settles USDC to merchant. Mints NFT receipt. Zero crypto knowledge required.**

Live demo → (coming Day 12)  
Contract (Base mainnet) → (coming Day 21)  
Build-in-public thread → https://x.com/VijayBh56040531/status/1993880950980448495

## Problem I’m solving (India 2025)
- 99 % customers pay with PhonePe/GPay  
- 99 % kirana uncles have never touched a wallet  
- Everyone needs proper bills for tax & loyalty  
- No one wants to learn “blockchain”

## How it works (explained to an uncle)
Customer scans QR →  
→ Pays with normal UPI (Transak) **OR** wallet  
→ Smart wallet auto-created using their phone number (Coinbase Smart Wallet)  
→ Gets NFT receipt via SMS/WhatsApp link  
Merchant receives USDC daily → chooses auto-convert & bank deposit (IMPS) or keep crypto

Zero seed phrases. Zero gas for customer. Zero education needed.

## What customer gets
- Same UPI flow they already use 50× a day
- Digital receipt forever (NFT)
- Real crypto wallet created silently

## What merchant gets
- One QR for everything
- Money in USDC instantly
- Daily bank deposit option (Transak sell API → IMPS)
- Free digital records + loyalty system

## Tech stack (production-ready from day 1)
- Solidity + Hardhat + OpenZeppelin UUPS upgradeable proxy
- Base mainnet (lowest fees in Ethereum ecosystem)
- Sound Protocol v2 / Zora for cheap soul-bound receipts
- Frontend → Next.js + RainbowKit + wagmi
- UPI → crypto → Transak widget + webhook
- Smart wallet for non-crypto users → Coinbase Smart Wallet SDK (phone-seeded)
- Backend → Node.js + Vercel serverless

## Roadmap (next 45 days)
1. Upgradeable ReceiptsV1 + full tests (Day 1–10)
2. Transak UPI flow + auto smart wallet creation (Day 11–18)
3. Merchant dashboard + daily bank settlement (Day 19–25)
4. 50+ real kirana stores live in Dehradun (Day 26–40)
5. Base mainnet deploy + verified contracts (Day 21–45)
6. Multiple remote Solidity offers + move to Bangalore
