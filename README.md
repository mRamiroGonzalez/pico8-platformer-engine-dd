
My attempt at making a small 2D platformer engine


This project is compressed using a php script, see https://www.reddit.com/r/pico8/comments/5p9ohs/my_pico8_development_workflow/

- Working:
  - Player walking on solid block
  - Player jumping and not going through blocs except when supposed to
  - Gravity affects the player
  - Player can climb a ladder
  - Player can shoot
  - shots disappear when too far from their starting point or when hitting a solid block
  - bad guys can be spawned, they are stupid and only move from left to right randomly
  - player can shoot bad guys
  
- Not working - bugs:
  - The player can go through blocks if it's speed is more than 8 px/loop
  - The top of the ladder is still a bit glitchy
  - The player can be teleported from the middle of a block to the top of it (platform block)
  - The hit detection need to be improved

- Flags:
  - 0: The block is considered as solid. You can't pass through from any side
  - 1: The block is considered as a platform. You can pass through from the bottom
  - 2: The block is considered as a ladder. You can go up and down on it and the gravity does not affect you while on it
