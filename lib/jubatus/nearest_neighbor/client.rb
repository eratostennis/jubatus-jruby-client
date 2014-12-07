# This file is auto-generated from nearest_neighbor.idl(0.5.4-186-g163c6bd) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'
require File.join(File.dirname(__FILE__), 'types')

module Jubatus

module NearestNeighbor
module Client

class NearestNeighbor < Jubatus::Common::ClientBase
  include Jubatus::Common
  def initialize(host, port, name, timeout_sec=10)
    super
  end

  def clear
    @jubatus_client.call("clear", [], TBool.new, [])
  end

  def set_row(id, d)
    @jubatus_client.call("set_row", [id, d], TBool.new, [TString.new,
        TDatum.new])
  end

  def neighbor_row_from_id(id, size)
    @jubatus_client.call("neighbor_row_from_id", [id, size], TList.new(
        TUserDef.new(IdWithScore)), [TString.new, TInt.new(false, 4)])
  end

  def neighbor_row_from_datum(query, size)
    @jubatus_client.call("neighbor_row_from_datum", [query, size], TList.new(
        TUserDef.new(IdWithScore)), [TDatum.new, TInt.new(false, 4)])
  end

  def similar_row_from_id(id, ret_num)
    @jubatus_client.call("similar_row_from_id", [id, ret_num], TList.new(
        TUserDef.new(IdWithScore)), [TString.new, TInt.new(true, 4)])
  end

  def similar_row_from_datum(query, ret_num)
    @jubatus_client.call("similar_row_from_datum", [query, ret_num], TList.new(
        TUserDef.new(IdWithScore)), [TDatum.new, TInt.new(true, 4)])
  end
end

end  # Client
end  # NearestNeighbor

end  # Jubatus
