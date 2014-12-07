# This file is auto-generated from graph.idl(0.5.4-179-gb59b61b) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'

module Jubatus
module Graph

class Node
  include Jubatus::Common
  TYPE = TTuple.new(TMap.new(TString.new, TString.new), TList.new(TInt.new(
      false, 8)), TList.new(TInt.new(false, 8)))

  def initialize(property, in_edges, out_edges)
    @property = property
    @in_edges = in_edges
    @out_edges = out_edges
  end

  def to_msgpack(out = '')
    t = [@property, @in_edges, @out_edges]
    return TYPE.to_msgpack(t)
  end

  def Node.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    Node.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("node")
    gen.add("property", @property)
    gen.add("in_edges", @in_edges)
    gen.add("out_edges", @out_edges)
    gen.close()
    return gen.to_s
  end

  attr_reader :property, :in_edges, :out_edges

end

class Query
  include Jubatus::Common
  TYPE = TTuple.new(TString.new, TString.new)

  def initialize(from_id, to_id)
    @from_id = from_id
    @to_id = to_id
  end

  def to_msgpack(out = '')
    t = [@from_id, @to_id]
    return TYPE.to_msgpack(t)
  end

  def Query.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    Query.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("query")
    gen.add("from_id", @from_id)
    gen.add("to_id", @to_id)
    gen.close()
    return gen.to_s
  end

  attr_reader :from_id, :to_id

end

class PresetQuery
  include Jubatus::Common
  TYPE = TTuple.new(TList.new(TUserDef.new(Query)), TList.new(TUserDef.new(
      Query)))

  def initialize(edge_query, node_query)
    @edge_query = edge_query
    @node_query = node_query
  end

  def to_msgpack(out = '')
    t = [@edge_query, @node_query]
    return TYPE.to_msgpack(t)
  end

  def PresetQuery.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    PresetQuery.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("preset_query")
    gen.add("edge_query", @edge_query)
    gen.add("node_query", @node_query)
    gen.close()
    return gen.to_s
  end

  attr_reader :edge_query, :node_query

end

class Edge
  include Jubatus::Common
  TYPE = TTuple.new(TMap.new(TString.new, TString.new), TString.new,
      TString.new)

  def initialize(property, source, target)
    @property = property
    @source = source
    @target = target
  end

  def to_msgpack(out = '')
    t = [@property, @source, @target]
    return TYPE.to_msgpack(t)
  end

  def Edge.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    Edge.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("edge")
    gen.add("property", @property)
    gen.add("source", @source)
    gen.add("target", @target)
    gen.close()
    return gen.to_s
  end

  attr_reader :property, :source, :target

end

class ShortestPathQuery
  include Jubatus::Common
  TYPE = TTuple.new(TString.new, TString.new, TInt.new(false, 4), TUserDef.new(
      PresetQuery))

  def initialize(source, target, max_hop, query)
    @source = source
    @target = target
    @max_hop = max_hop
    @query = query
  end

  def to_msgpack(out = '')
    t = [@source, @target, @max_hop, @query]
    return TYPE.to_msgpack(t)
  end

  def ShortestPathQuery.from_msgpack(m)
    val = TYPE.from_msgpack(m)
    ShortestPathQuery.new(*val)
  end

  def to_s
    gen = Jubatus::Common::MessageStringGenerator.new
    gen.open("shortest_path_query")
    gen.add("source", @source)
    gen.add("target", @target)
    gen.add("max_hop", @max_hop)
    gen.add("query", @query)
    gen.close()
    return gen.to_s
  end

  attr_reader :source, :target, :max_hop, :query

end

end  # Graph
end  # Jubatus
