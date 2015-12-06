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
QS = require "querystring"

module.exports = (robot) ->
  robot.respond /deploy pongstats/i, (msg) ->
    data = QS.stringify environment_id: 56092
    msg.http('https://evo3.deploybot.com/api/v1/deployments')
    .header("Content-Type","application/json")
    .header("X-Api-Token",'779f59e08a53808b24298c18ca567ade671db8b4')
    .post(data) (err, resp, body) ->
      msg.send "https://dl.dropboxusercontent.com/u/602885/github/squirrelmobster.jpeg"