# Description:
#   Deploys Pong Stats
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot deploy pongstats - Deploys!
#
# Author:
#   michaeljhopkins

module.exports = (robot) ->
  robot.respond /deploy pongstats/i, (msg) ->
    msg.http("https://evo3.deploybot.com/webhook/deploy?env_id=56092&secret=0716a7dbbbc34331e7d6b4552f661e468fc7c3a82c707037").post() (error, response, body) ->
	  data = JSON.parse(body)['data']
      if data
        response = data[0]
        msg.send response
      else
        msg.send "No Response"
        return