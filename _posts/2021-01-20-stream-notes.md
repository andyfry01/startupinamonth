# 01/20/2021 Stream notes

## Plan

- Program some game logic! Finally!
- Get more comfortable with REPL-driven development
- Take advantage of some sweet techniques I learned about

## Mantra

KISS

## Loose agenda


- Take the starter game logic code and build it out further
- Build functions which will be easy to hook up to web socket listeners
- Build game creation code
  - random four letter game code - DONE 👍 (no shame)
  - starter object to feed into game state - DONE 👍
  - save the starter game object into state - DONE 👍
  - Add the host of the game as a player into the game state - DONE 👍
  - Add starter movies to the game state - DONE 👍
  - Register players to already created game - DONE 👍
  - Send out plots to the players 
    - create a random vector of game plots - DONE 👍
    - get the appropriate plot according to round index - DONE 👍
  - Track the round of the game in game state
    - initialize to 0 - DONE 👍
    - increment by one each round - DONE 👍
  - Refactor state ish (can I do this better? Email me at andy@startupinamonth.net)
  - Method for players to add plots to game state
  - Method for players to vote
  - Method for the game to request state (votes, plots, players, round, etc)
  - Method to figure out who won!

## Links

- [DHH talk on software complexity](https://www.youtube.com/watch?v=zKyv-IGvgGE)
- [Clojure debugging 1](https://cambium.consulting/articles/2018/2/8/the-power-of-clojure-debugging/)
- [Clojure debugging 2](https://cognitect.com/blog/2017/6/5/repl-debugging-no-stacktrace-required)
- [Ramda Pipe](https://ramdajs.com/docs/#pipe)
- [Dereferencing a null pointer](https://www.youtube.com/watch?v=bLHL75H_VEM)



