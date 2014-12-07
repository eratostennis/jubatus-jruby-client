module Jubatus
module Common

class InterfaceMismatch < Exception; end
class UnknownMethod < InterfaceMismatch; end
class TypeMismatch < InterfaceMismatch; end

class Client
  attr_accessor :name

  def initialize(client, name)
    @client = client
    @name = name
  end

  def call(method, args, ret_type, args_type)
    if args.size != args_type.size
      raise "number of arguemnts for \"%s\" must to be %d, but %d arguments are given" % [method, args_type.size, args.size]
    end
    values = [@name]
    args.zip(args_type).each do |v, t|
      values << t.to_msgpack(v)
    end
    ret = @client.call(method, values)

    if ret_type != nil
      return ret_type.from_msgpack(ret)
    end
  end

  def error_handler(error, result)
    if error == 1
      raise UnknownMethod
    elsif error == 2
      raise TypeMismatch
    else
      raise "#{error.to_s} , #{result.to_s}"
    end
  end
end

class ClientBase
  def initialize(host, port, name, timeout_sec)
    @cli = MessagePack::RPCOverHTTP::Client.new("http://#{host}:#{port}")
    @cli.timeout = timeout_sec
    @jubatus_client = Jubatus::Common::Client.new(@cli, name)
  end

  def self.connect(host, port, name, timeout_sec, &block)
    begin
      client = self.new(host, port, name, timeout_sec)
      block.call(client)
    ensure
      client.get_client.close
    end
  end

  def get_client
    @cli
  end

  def get_name
    @jubatus_client.name
  end

  def set_name(name)
    @jubatus_client.name = name
  end

  def get_config
    @jubatus_client.call("get_config", [], TString.new, [])
  end

  def save(id)
    @jubatus_client.call("save", [id], TBool.new, [TString.new])
  end

  def load(id)
    @jubatus_client.call("load", [id], TBool.new, [TString.new])
  end

  def get_status
    @jubatus_client.call("get_status", [], TMap.new(TString.new, TMap.new(
        TString.new, TString.new)), [])
  end

  def do_mix
    @jubatus_client.call("do_mix", [], TBool.new, [])
  end

  def get_proxy_status
    @jubatus_client.call("get_proxy_status", [], TMap.new(TString.new, TMap.new(
        TString.new, TString.new)), [])
  end
end

end
end
