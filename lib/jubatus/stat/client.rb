# This file is auto-generated from stat.idl(0.5.2-68-g68e898d) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'
require File.join(File.dirname(__FILE__), 'types')

module Jubatus

module Stat
module Client

class Stat < Jubatus::Common::ClientBase
  include Jubatus::Common
  def initialize(host, port, name, timeout_sec=10)
    super
  end

  def push(key, value)
    @jubatus_client.call("push", [key, value], TBool.new, [TString.new,
        TFloat.new])
  end

  def sum(key)
    @jubatus_client.call("sum", [key], TFloat.new, [TString.new])
  end

  def stddev(key)
    @jubatus_client.call("stddev", [key], TFloat.new, [TString.new])
  end

  def max(key)
    @jubatus_client.call("max", [key], TFloat.new, [TString.new])
  end

  def min(key)
    @jubatus_client.call("min", [key], TFloat.new, [TString.new])
  end

  def entropy(key)
    @jubatus_client.call("entropy", [key], TFloat.new, [TString.new])
  end

  def moment(key, degree, center)
    @jubatus_client.call("moment", [key, degree, center], TFloat.new,
        [TString.new, TInt.new(true, 4), TFloat.new])
  end

  def clear
    @jubatus_client.call("clear", [], TBool.new, [])
  end
end

end  # Client
end  # Stat

end  # Jubatus
