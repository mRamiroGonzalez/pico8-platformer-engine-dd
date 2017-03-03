
My attempt at making a small 2D platformer engine

- Working:
  - Jump
  
- Not working:
  - Jumping on floors with a height which is not a multiple of 8

- Flags:
  - 0: The block is considered as solid. You can't pass through from any side
  - 1: The block is considered as a platform. You can pass through from the bottom
  - 2: The block is considered as a ladder. You can go up and down on it and the gravity does not affect you while on it