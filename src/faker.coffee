# Description
#   A hubot script that does the faking of things
#
# Configuration:
#   HUBOT_FAKER_API_URL = Optional. If set, allow you to use your own faker-api instance
#
# Commands:
#   hubot fake [class] [method] - please see https://github.com/stympy/faker for class and methods
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Dustin Schie <me@dustinschie.com>
URL = process.env.HUBOT_FAKER_API_URL || 'https://fakerapi.herokuapp.com'

module.exports = (robot) ->
  robot.respond /fake( \w+ \w+)$/i, (res) ->
    path = res.match[1].split(' ').join('/')
    robot.http("#{URL}/#{path}")
      .get() (err, resp, body) ->
        if resp.statusCode isnt 200
          res.send "I can't; something went wrong!"
        else
          res.send body
