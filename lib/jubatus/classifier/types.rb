# This file is auto-generated from classifier.idl(0.6.1-18-gbb16715) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'

module Jubatus
module Classifier

class EstimateResult
  include Jubatus::Common
  TYPE = TTuple.new(TString.new, TFloat.new)

  def initialize(label, score)
    @label = label
    @score = score
  end

  def to_msgpack(out = '')
    t = [@label, @score]
    return TYPE.to_msgpack(t)
  end

  def EstimateResult.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    EstimateResult.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("estimate_result")
    gen.add("label", @label)
    gen.add("score", @score)
    gen.close()
    return gen.to_s
  end

  attr_reader :label, :score

end

class LabeledDatum
  include Jubatus::Common
  TYPE = TTuple.new(TString.new, TDatum.new)

  def initialize(label, data)
    @label = label
    @data = data
  end

  def to_msgpack(out = '')
    t = [@label, @data]
    return TYPE.to_msgpack(t)
  end

  def LabeledDatum.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    LabeledDatum.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("labeled_datum")
    gen.add("label", @label)
    gen.add("data", @data)
    gen.close()
    return gen.to_s
  end

  attr_reader :label, :data

end

end  # Classifier
end  # Jubatus
