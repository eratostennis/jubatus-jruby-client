# This file is auto-generated from burst.idl(0.6.1-34-gb64049d) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'
require File.join(File.dirname(__FILE__), 'types')

module Jubatus

module Burst
module Client

class Burst < Jubatus::Common::ClientBase
  include Jubatus::Common
  def initialize(host, port, name, timeout_sec=10)
    super
  end

  def add_documents(data)
    @jubatus_client.call("add_documents", [data], TInt.new(true, 4), [TList.new(
        TUserDef.new(Document))])
  end

  def get_result(keyword)
    @jubatus_client.call("get_result", [keyword], TUserDef.new(Window),
        [TString.new])
  end

  def get_result_at(keyword, pos)
    @jubatus_client.call("get_result_at", [keyword, pos], TUserDef.new(Window),
        [TString.new, TFloat.new])
  end

  def get_all_bursted_results
    @jubatus_client.call("get_all_bursted_results", [], TMap.new(TString.new,
        TUserDef.new(Window)), [])
  end

  def get_all_bursted_results_at(pos)
    @jubatus_client.call("get_all_bursted_results_at", [pos], TMap.new(
        TString.new, TUserDef.new(Window)), [TFloat.new])
  end

  def get_all_keywords
    @jubatus_client.call("get_all_keywords", [], TList.new(TUserDef.new(
        KeywordWithParams)), [])
  end

  def add_keyword(keyword)
    @jubatus_client.call("add_keyword", [keyword], TBool.new, [TUserDef.new(
        KeywordWithParams)])
  end

  def remove_keyword(keyword)
    @jubatus_client.call("remove_keyword", [keyword], TBool.new, [TString.new])
  end

  def remove_all_keywords
    @jubatus_client.call("remove_all_keywords", [], TBool.new, [])
  end
end

end  # Client
end  # Burst

end  # Jubatus
