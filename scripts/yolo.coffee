# Description:
#   Google image result of the term "YOLO"
#
# Usage:
#   hubot #YOLO me
#   hubot yolo me

module.exports = (robot) ->

  robot.respond /(#YOLO|yolo)( me)? (.*)/i, (msg) ->
    imageMe msg, "YOLO", (url) ->
      msg.send url

imageMe = (msg, query, animated, cb) ->
  cb = animated if typeof animated == 'function'
  q = v: '1.0', rsz: '8', q: query, safe: 'active'
  q.as_filetype = 'gif' if typeof animated is 'boolean' and animated is true
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(q)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData.results
      if images.length > 0
        image  = msg.random images
        cb "#{image.unescapedUrl}#.png"