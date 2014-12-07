# This file is auto-generated from burst.idl(0.6.1-34-gb64049d) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'

module Jubatus
module Burst

class KeywordWithParams
  include Jubatus::Common
  TYPE = TTuple.new(TString.new, TFloat.new, TFloat.new)

  def initialize(keyword, scaling_param, gamma)
    @keyword = keyword
    @scaling_param = scaling_param
    @gamma = gamma
  end

  def to_msgpack(out = '')
    t = [@keyword, @scaling_param, @gamma]
    return TYPE.to_msgpack(t)
  end

  def KeywordWithParams.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    KeywordWithParams.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("keyword_with_params")
    gen.add("keyword", @keyword)
    gen.add("scaling_param", @scaling_param)
    gen.add("gamma", @gamma)
    gen.close()
    return gen.to_s
  end

  attr_reader :keyword, :scaling_param, :gamma

end

class Batch
  include Jubatus::Common
  TYPE = TTuple.new(TInt.new(true, 4), TInt.new(true, 4), TFloat.new)

  def initialize(all_data_count, relevant_data_count, burst_weight)
    @all_data_count = all_data_count
    @relevant_data_count = relevant_data_count
    @burst_weight = burst_weight
  end

  def to_msgpack(out = '')
    t = [@all_data_count, @relevant_data_count, @burst_weight]
    return TYPE.to_msgpack(t)
  end

  def Batch.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    Batch.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("batch")
    gen.add("all_data_count", @all_data_count)
    gen.add("relevant_data_count", @relevant_data_count)
    gen.add("burst_weight", @burst_weight)
    gen.close()
    return gen.to_s
  end

  attr_reader :all_data_count, :relevant_data_count, :burst_weight

end

class Window
  include Jubatus::Common
  TYPE = TTuple.new(TFloat.new, TList.new(TUserDef.new(Batch)))

  def initialize(start_pos, batches)
    @start_pos = start_pos
    @batches = batches
  end

  def to_msgpack(out = '')
    t = [@start_pos, @batches]
    return TYPE.to_msgpack(t)
  end

  def Window.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    Window.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("window")
    gen.add("start_pos", @start_pos)
    gen.add("batches", @batches)
    gen.close()
    return gen.to_s
  end

  attr_reader :start_pos, :batches

end

class Document
  include Jubatus::Common
  TYPE = TTuple.new(TFloat.new, TString.new)

  def initialize(pos, text)
    @pos = pos
    @text = text
  end

  def to_msgpack(out = '')
    t = [@pos, @text]
    return TYPE.to_msgpack(t)
  end

  def Document.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    Document.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("document")
    gen.add("pos", @pos)
    gen.add("text", @text)
    gen.close()
    return gen.to_s
  end

  attr_reader :pos, :text

end

end  # Burst
end  # Jubatus
