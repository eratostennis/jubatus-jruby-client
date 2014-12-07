# This file is auto-generated from regression.idl(0.5.2-68-g68e898d) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'
require File.join(File.dirname(__FILE__), 'types')

module Jubatus

module Regression
module Client

class Regression < Jubatus::Common::ClientBase
  include Jubatus::Common
  def initialize(host, port, name, timeout_sec=10)
    super
  end

  def train(train_data)
    @jubatus_client.call("train", [train_data], TInt.new(true, 4), [TList.new(
        TUserDef.new(ScoredDatum))])
  end

  def estimate(estimate_data)
    @jubatus_client.call("estimate", [estimate_data], TList.new(TFloat.new),
        [TList.new(TDatum.new)])
  end

  def clear
    @jubatus_client.call("clear", [], TBool.new, [])
  end
end

end  # Client
end  # Regression

end  # Jubatus
