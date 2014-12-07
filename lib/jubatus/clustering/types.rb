# This file is auto-generated from clustering.idl(0.6.1-17-g1bca359) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'

module Jubatus
module Clustering

class WeightedDatum
  include Jubatus::Common
  TYPE = TTuple.new(TFloat.new, TDatum.new)

  def initialize(weight, point)
    @weight = weight
    @point = point
  end

  def to_msgpack(out = '')
    t = [@weight, @point]
    return TYPE.to_msgpack(t)
  end

  def WeightedDatum.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    WeightedDatum.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("weighted_datum")
    gen.add("weight", @weight)
    gen.add("point", @point)
    gen.close()
    return gen.to_s
  end

  attr_reader :weight, :point

end

end  # Clustering
end  # Jubatus
