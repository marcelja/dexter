require_relative "dexter/version"
require "slop"
require "pg"
require "pg_query"
require "time"
require "set"
require "thread"
require_relative "dexter/logging"
require_relative "dexter/client"
require_relative "dexter/collector"
require_relative "dexter/indexer"
require_relative "dexter/log_parser"
require_relative "dexter/csv_log_parser"
require_relative "dexter/pg_stat_activity_parser"
require_relative "dexter/sql_log_parser"
require_relative "dexter/processor"
require_relative "dexter/query"

module Dexter
  class Abort < StandardError; end
  Client.new(ARGV).perform
end
