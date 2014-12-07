# This file is auto-generated from classifier.idl(0.6.1-18-gbb16715) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'
require File.join(File.dirname(__FILE__), 'types')

module Jubatus

module Classifier
module Client

class Classifier < Jubatus::Common::ClientBase
  include Jubatus::Common
  def initialize(host, port, name, timeout_sec=10)
    super
  end

  def train(data)
    @jubatus_client.call("train", [data], TInt.new(true, 4), [TList.new(
        TUserDef.new(LabeledDatum))])
  end

  def classify(data)
    @jubatus_client.call("classify", [data], TList.new(TList.new(TUserDef.new(
        EstimateResult))), [TList.new(TDatum.new)])
  end

  def get_labels
    @jubatus_client.call("get_labels", [], TList.new(TString.new), [])
  end

  def set_label(new_label)
    @jubatus_client.call("set_label", [new_label], TBool.new, [TString.new])
  end

  def clear
    @jubatus_client.call("clear", [], TBool.new, [])
  end

  def delete_label(target_label)
    @jubatus_client.call("delete_label", [target_label], TBool.new,
        [TString.new])
  end
end

end  # Client
end  # Classifier

end  # Jubatus
