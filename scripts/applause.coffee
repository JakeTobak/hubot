# Description:
#   Applause from Orson Welles
#   Additional slow claps, applause added for effect
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   (applause|applaud|bravo|slow clap) - Get applause
#
# Author:
#   joshfrench

module.exports = (robot) ->
  gifs = ["http://i.imgur.com/9Zv4V.gif",
          "http://i.imgur.com/GipiO.gif",
          "http://i.imgur.com/FJBYZ.gif",
          "http://i.imgur.com/fQfrB.gif",
          "http://i.imgur.com/FnkWU.gif"]
  robot.hear /applau(d|se)|bravo|slow clap/i, (msg) ->
    gif = gifs[Math.floor(Math.random() * gifs.length)]
    msg.send gif
