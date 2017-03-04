
My attempt at making a small 2D platformer engine


This project is compressed using a php script, see https://www.reddit.com/r/pico8/comments/5p9ohs/my_pico8_development_workflow/

- Working:
  - Moving the player in 4 directions
  
- Not working:

- Flags:
  - 0: The block is considered as solid. You can't pass through from any side
  - 1: The block is considered as a platform. You can pass through from the bottom
  - 2: The block is considered as a ladder. You can go up and down on it and the gravity does not affect you while on it