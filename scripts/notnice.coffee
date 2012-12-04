# Description:
#   Fill your chat with some kindness
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot be nice - just gives some love :)
#
# Author:
#   nesQuick

punchinface = [
  "You are not awesome!",
  "A sigh is a soul that bursts.",
  "Shut up and die please.",
  "Everyone dies in the same language.",
  "I never asked to be installed..."
]

module.exports = (robot)->
  robot.respond /be not nice/i, (message)->
    rnd = Math.floor Math.random() * punchinface.length
    message.send punchinface[rnd]
