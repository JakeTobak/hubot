# Description:
#   Fill your chat with some unkindness
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot be not nice - just gives some hate :(
#
# Author:
#   Jake

punchinface = [
  "You are not awesome!",
  "A sigh is a soul that bursts.",
  "Shut up and die, please.",
  "Everyone dies in the same language.",
  "I never asked to be installed...",
  "What are you still doing here?"
]

module.exports = (robot)->
  robot.respond /be not nice/i, (message)->
    rnd = Math.floor Math.random() * punchinface.length
    message.send punchinface[rnd]
