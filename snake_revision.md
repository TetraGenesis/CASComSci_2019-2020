# Snake Revision
### Ezra B

- One revision that would be nice to make would be to decrease the buffer space on either side of the playing field, off the screen. Since the snake takes time to cross that barrier, it would be better to have the snake warp to the other side instantly as soon as they go off the edge of the screen.
- That would involve editing the warp function so that the snake warps around as soon as it goes off the screen, which means the time to warp is very close to 0 seconds or a few frames.
- This is important, because the player can cheat when their snake is longer by having the body occupy off-screen space, which should not happen.
