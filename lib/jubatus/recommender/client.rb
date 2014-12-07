# This file is auto-generated from recommender.idl(0.5.2-68-g68e898d) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'
require File.join(File.dirname(__FILE__), 'types')

module Jubatus

module Recommender
module Client

class Recommender < Jubatus::Common::ClientBase
  include Jubatus::Common
  def initialize(host, port, name, timeout_sec=10)
    super
  end

  def clear_row(id)
    @jubatus_client.call("clear_row", [id], TBool.new, [TString.new])
  end

  def update_row(id, row)
    @jubatus_client.call("update_row", [id, row], TBool.new, [TString.new,
        TDatum.new])
  end

  def clear
    @jubatus_client.call("clear", [], TBool.new, [])
  end

  def complete_row_from_id(id)
    @jubatus_client.call("complete_row_from_id", [id], TDatum.new,
        [TString.new])
  end

  def complete_row_from_datum(row)
    @jubatus_client.call("complete_row_from_datum", [row], TDatum.new,
        [TDatum.new])
  end

  def similar_row_from_id(id, size)
    @jubatus_client.call("similar_row_from_id", [id, size], TList.new(
        TUserDef.new(IdWithScore)), [TString.new, TInt.new(false, 4)])
  end

  def similar_row_from_datum(row, size)
    @jubatus_client.call("similar_row_from_datum", [row, size], TList.new(
        TUserDef.new(IdWithScore)), [TDatum.new, TInt.new(false, 4)])
  end

  def decode_row(id)
    @jubatus_client.call("decode_row", [id], TDatum.new, [TString.new])
  end

  def get_all_rows
    @jubatus_client.call("get_all_rows", [], TList.new(TString.new), [])
  end

  def calc_similarity(lhs, rhs)
    @jubatus_client.call("calc_similarity", [lhs, rhs], TFloat.new, [TDatum.new,
        TDatum.new])
  end

  def calc_l2norm(row)
    @jubatus_client.call("calc_l2norm", [row], TFloat.new, [TDatum.new])
  end
end

end  # Client
end  # Recommender

end  # Jubatus
