# This file is auto-generated from graph.idl(0.5.4-179-gb59b61b) with jenerator version 0.5.4-224-g49229fa/master
# *** DO NOT EDIT ***

require 'rubygems'
require 'msgpack-rpc-over-http-jruby'
require 'jubatus/common'
require File.join(File.dirname(__FILE__), 'types')

module Jubatus

module Graph
module Client

class Graph < Jubatus::Common::ClientBase
  include Jubatus::Common
  def initialize(host, port, name, timeout_sec=10)
    super
  end

  def create_node
    @jubatus_client.call("create_node", [], TString.new, [])
  end

  def remove_node(node_id)
    @jubatus_client.call("remove_node", [node_id], TBool.new, [TString.new])
  end

  def update_node(node_id, property)
    @jubatus_client.call("update_node", [node_id, property], TBool.new,
        [TString.new, TMap.new(TString.new, TString.new)])
  end

  def create_edge(node_id, e)
    @jubatus_client.call("create_edge", [node_id, e], TInt.new(false, 8),
        [TString.new, TUserDef.new(Edge)])
  end

  def update_edge(node_id, edge_id, e)
    @jubatus_client.call("update_edge", [node_id, edge_id, e], TBool.new,
        [TString.new, TInt.new(false, 8), TUserDef.new(Edge)])
  end

  def remove_edge(node_id, edge_id)
    @jubatus_client.call("remove_edge", [node_id, edge_id], TBool.new,
        [TString.new, TInt.new(false, 8)])
  end

  def get_centrality(node_id, centrality_type, query)
    @jubatus_client.call("get_centrality", [node_id, centrality_type, query],
        TFloat.new, [TString.new, TInt.new(true, 4), TUserDef.new(PresetQuery)])
  end

  def add_centrality_query(query)
    @jubatus_client.call("add_centrality_query", [query], TBool.new,
        [TUserDef.new(PresetQuery)])
  end

  def add_shortest_path_query(query)
    @jubatus_client.call("add_shortest_path_query", [query], TBool.new,
        [TUserDef.new(PresetQuery)])
  end

  def remove_centrality_query(query)
    @jubatus_client.call("remove_centrality_query", [query], TBool.new,
        [TUserDef.new(PresetQuery)])
  end

  def remove_shortest_path_query(query)
    @jubatus_client.call("remove_shortest_path_query", [query], TBool.new,
        [TUserDef.new(PresetQuery)])
  end

  def get_shortest_path(query)
    @jubatus_client.call("get_shortest_path", [query], TList.new(TString.new),
        [TUserDef.new(ShortestPathQuery)])
  end

  def update_index
    @jubatus_client.call("update_index", [], TBool.new, [])
  end

  def clear
    @jubatus_client.call("clear", [], TBool.new, [])
  end

  def get_node(node_id)
    @jubatus_client.call("get_node", [node_id], TUserDef.new(Node),
        [TString.new])
  end

  def get_edge(node_id, edge_id)
    @jubatus_client.call("get_edge", [node_id, edge_id], TUserDef.new(Edge),
        [TString.new, TInt.new(false, 8)])
  end

  def create_node_here(node_id)
    @jubatus_client.call("create_node_here", [node_id], TBool.new,
        [TString.new])
  end

  def remove_global_node(node_id)
    @jubatus_client.call("remove_global_node", [node_id], TBool.new,
        [TString.new])
  end

  def create_edge_here(edge_id, e)
    @jubatus_client.call("create_edge_here", [edge_id, e], TBool.new, [TInt.new(
        false, 8), TUserDef.new(Edge)])
  end
end

end  # Client
end  # Graph

end  # Jubatus
