# This file is auto-generated from clustering.idl(0.6.1-17-g1bca359) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'
require File.join(File.dirname(__FILE__), 'types')

module Jubatus

module Clustering
module Client

class Clustering < Jubatus::Common::ClientBase
  include Jubatus::Common
  def initialize(host, port, name, timeout_sec=10)
    super
  end

  def push(points)
    @jubatus_client.call("push", [points], TBool.new, [TList.new(TDatum.new)])
  end

  def get_revision
    @jubatus_client.call("get_revision", [], TInt.new(false, 4), [])
  end

  def get_core_members
    @jubatus_client.call("get_core_members", [], TList.new(TList.new(
        TUserDef.new(WeightedDatum))), [])
  end

  def get_k_center
    @jubatus_client.call("get_k_center", [], TList.new(TDatum.new), [])
  end

  def get_nearest_center(point)
    @jubatus_client.call("get_nearest_center", [point], TDatum.new,
        [TDatum.new])
  end

  def get_nearest_members(point)
    @jubatus_client.call("get_nearest_members", [point], TList.new(TUserDef.new(
        WeightedDatum)), [TDatum.new])
  end

  def clear
    @jubatus_client.call("clear", [], TBool.new, [])
  end
end

end  # Client
end  # Clustering

end  # Jubatus
