# Description
#   A hubot script that does the things
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot fake [class] [method]- <what the respond trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Dustin Schie <me@dustinschie.com>
URL = 'https://fakerapi.herokuapp.com'

module.exports = (robot) ->
  robot.respond /fake( \w+ \w+)$/i, (res) ->
    path = res.match[1].split(' ').join('/')
    robot.http("#{URL}/#{path}")
      .get() (err, resp, body) ->
        if resp.statusCode isnt 200
          res.send "I can't; something went wrong!"
        else
          res.send body
