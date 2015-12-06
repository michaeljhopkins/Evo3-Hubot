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
var request = require("request");

squirrels = [
  "http://images.cheezburger.com/completestore/2011/11/2/aa83c0c4-2123-4bd3-8097-966c9461b30c.jpg",
  "http://images.cheezburger.com/completestore/2011/11/2/46e81db3-bead-4e2e-a157-8edd0339192f.jpg",
  "http://28.media.tumblr.com/tumblr_lybw63nzPp1r5bvcto1_500.jpg",
  "http://i.imgur.com/DPVM1.png",
  "http://d2f8dzk2mhcqts.buttfront.net/0772_PEW_Roundup/09_Squirrel.jpg",
  "http://www.cybersalt.org/images/funnypictures/s/supersquirrel.jpg",
  "http://www.zmescience.com/wp-content/uploads/2010/09/squirrel.jpg",
  "http://img70.imageshack.us/img70/4853/cutesquirrels27rn9.jpg",
  "http://img70.imageshack.us/img70/9615/cutesquirrels15ac7.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/sniper-squirrel.jpg",
  "http://1.bp.blogspot.com/_v0neUj-VDa4/TFBEbqFQcII/AAAAAAAAFBU/E8kPNmF1h1E/s640/squirrelbacca-thumb.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/soldier-squirrel.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/squirrelmobster.jpeg",
]

var options = { method: 'POST',
  url: 'https://evo3.deploybot.com/api/v1/deployments',
  headers: 
   { 'content-type': 'application/json','x-api-token': '779f59e08a53808b24298c18ca567ade671db8b4' },
  body: { environment_id: 56092 },
  json: true };

request(options, function (error, response, body) {
  if (error) throw new Error(error);

  console.log(body);
});

module.exports = (robot) ->
  robot.respond /deploy pongstats/i, (msg) ->
    request(options, function (error, response, body) {
      if (error) throw new Error(error);
      console.log(body);
      msg.send msg.random squirrels
    });
          		


