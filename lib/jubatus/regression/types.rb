# This file is auto-generated from regression.idl(0.5.2-68-g68e898d) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'

module Jubatus
module Regression

class ScoredDatum
  include Jubatus::Common
  TYPE = TTuple.new(TFloat.new, TDatum.new)

  def initialize(score, data)
    @score = score
    @data = data
  end

  def to_msgpack(out = '')
    t = [@score, @data]
    return TYPE.to_msgpack(t)
  end

  def ScoredDatum.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    ScoredDatum.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("scored_datum")
    gen.add("score", @score)
    gen.add("data", @data)
    gen.close()
    return gen.to_s
  end

  attr_reader :score, :data

end

end  # Regression
end  # Jubatus
