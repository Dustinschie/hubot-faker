chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'faker', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/faker')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledOnce
