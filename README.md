# hubot-faker

A hubot script that interfaces with [faker-api](https://github.com/dustinschie/faker-api).

See [`src/faker.coffee`](src/faker.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-faker --save`

Then add **hubot-faker** to your `external-scripts.json`:

```json
[
  "hubot-faker"
]
```

## Sample Interaction

```
user1>> hubot fake hacker say_something_smart
hubot>> If we input the program, we can get to the RAM firewall through the haptic EXE firewall!
```
