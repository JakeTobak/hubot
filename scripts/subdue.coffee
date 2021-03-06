# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot subdue <name> - put <name> to subdue
#
# Author:
#   mimsy

module.exports = (robot) ->
  robot.respond /subdue (.*)/i, (msg) ->
    name = msg.match[1].trim()
    msg.send(subdue(name))

subdue = (name) ->
  methods[(Math.random() * methods.length) >> 0].replace(/{name}/, name);

methods = [
  "/me swallows {name} whole.",
  "/me throws {name} off a cliff.",
  "/me sings {name} a lullaby.",
  "/me slips a mystery pill in {name}'s drink"
]