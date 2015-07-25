# Description:
#    Animated gifs of all deaths from AMC's breaking bad.  Images from Buzzfeed http://www.buzzfeed.com/robinedds/an-exhaustive-rundown-of-every-single-death-in-breaking-bad
#
#   Random Jaden Smith Quote
#
#   Nighty Night
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   good morning
#   make it so
#
# Author:
#   Jake Payton
DECEMBER = 11

module.exports = (robot) ->
  robot.hear /make it so\b/i, (msg) ->
    currentDate = new Date()
    if currentDate.getMonth() is DECEMBER
      msg.send "http://i.imgur.com/U2tgKjM.jpg"
    else
      msg.send "http://i.imgur.com/rsXNr22.jpg"