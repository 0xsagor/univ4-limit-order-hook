# Uniswap V4 Limit Order Hook

This repository demonstrates the power of **Uniswap V4 Hooks**. By hooking into the swap lifecycle, we can create custom order types that don't exist in the core protocol.

## How it Works
1. **Placement**: A user calls `placeOrder` specifying a tick (price) and an amount.
2. **Monitoring**: As swaps occur in the pool, the hook's `afterSwap` function checks if the current tick has crossed any pending order thresholds.
3. **Execution**: When the price condition is met, the hook executes the trade using the pool's liquidity and makes the tokens available for the user to claim.

## Key Hook Points
* `beforeSwap`: Used to check state and prepare calculations.
* `afterSwap`: Used to trigger order execution logic after the price has shifted.

## Requirements
* Foundry (recommended for V4 development)
* Uniswap V4 Core & Periphery libraries
