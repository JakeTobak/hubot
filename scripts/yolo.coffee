# Description:
#   A way to interact with the Google Images API.
#
# picks up on the use of YOLO and finds an image for YOLO

module.exports = (robot) ->

  robot.hear /#YOLO|#yolo|yolo|YOLO/i, (msg) ->
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