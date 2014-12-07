# This file is auto-generated from anomaly.idl(0.5.2-68-g68e898d) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'
require File.join(File.dirname(__FILE__), 'types')

module Jubatus

module Anomaly
module Client

class Anomaly < Jubatus::Common::ClientBase
  include Jubatus::Common
  def initialize(host, port, name, timeout_sec=10)
    super
  end

  def clear_row(id)
    @jubatus_client.call("clear_row", [id], TBool.new, [TString.new])
  end

  def add(row)
    @jubatus_client.call("add", [row], TUserDef.new(IdWithScore), [TDatum.new])
  end

  def update(id, row)
    @jubatus_client.call("update", [id, row], TFloat.new, [TString.new,
        TDatum.new])
  end

  def overwrite(id, row)
    @jubatus_client.call("overwrite", [id, row], TFloat.new, [TString.new,
        TDatum.new])
  end

  def clear
    @jubatus_client.call("clear", [], TBool.new, [])
  end

  def calc_score(row)
    @jubatus_client.call("calc_score", [row], TFloat.new, [TDatum.new])
  end

  def get_all_rows
    @jubatus_client.call("get_all_rows", [], TList.new(TString.new), [])
  end
end

end  # Client
end  # Anomaly

end  # Jubatus
