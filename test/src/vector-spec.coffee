Vector = require '../../src/vector'

describe 'Vector', ->
  describe '->bearing', ->
    describe 'when x is 0 and y is 1', ->
      beforeEach ->
        @sut = new Vector 0, 1

      it 'should have a bearing of 0', ->
        expect(@sut.bearing()).to.equal 0

    describe 'when x is 1 and y is 0', ->
      beforeEach ->
        @sut = new Vector 1, 0

      it 'should have a bearing of π / 2', ->
        expect(@sut.bearing()).to.equal Math.PI / 2

    describe 'when x is -1 and y is 0', ->
      beforeEach ->
        @sut = new Vector -1, 0

      it 'should have a bearing of -π / 2', ->
        expect(@sut.bearing()).to.equal -1 * Math.PI / 2


  describe '->magnitude', ->
    describe 'when x is 1 and y is 0', ->
      beforeEach ->
        @sut = new Vector 1, 0

      it 'should return 1', ->
        expect(@sut.magnitude()).to.equal 1

    describe 'when x is 2 and y is 0', ->
      beforeEach ->
        @sut = new Vector 2, 0

      it 'should return 2', ->
        expect(@sut.magnitude()).to.equal 2

    describe 'when x is 0 and y is 1', ->
      beforeEach ->
        @sut = new Vector 0, 1

      it 'should return 1', ->
        expect(@sut.magnitude()).to.equal 1

    describe 'when x is 0 and y is 2', ->
      beforeEach ->
        @sut = new Vector 0, 2

      it 'should return 2', ->
        expect(@sut.magnitude()).to.equal 2

    describe 'when x is 1 and y is 1', ->
      beforeEach ->
        @sut = new Vector 1, 1

      it 'should return the sqrt of 2', ->
        expect(@sut.magnitude()).to.equal Math.sqrt(2)
