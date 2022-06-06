# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rack/all/rack.rbi
#
# rack-2.2.3.1

module Rack
  def self.release; end
  def self.version; end
end
module Rack::Auth
end
module Rack::Auth::Digest
end
module Rack::Session
end
class Rack::QueryParser
  def initialize(params_class, key_space_limit, param_depth_limit); end
  def key_space_limit; end
  def make_params; end
  def new_depth_limit(param_depth_limit); end
  def new_space_limit(key_space_limit); end
  def normalize_params(params, name, v, depth); end
  def param_depth_limit; end
  def params_hash_has_key?(hash, key); end
  def params_hash_type?(obj); end
  def parse_nested_query(qs, d = nil); end
  def parse_query(qs, d = nil, &unescaper); end
  def self.make_default(key_space_limit, param_depth_limit); end
  def unescape(s); end
end
class Rack::QueryParser::ParameterTypeError < TypeError
end
class Rack::QueryParser::InvalidParameterError < ArgumentError
end
class Rack::QueryParser::Params
  def [](key); end
  def []=(key, value); end
  def initialize(limit); end
  def key?(key); end
  def to_h; end
  def to_params_hash; end
end
module Rack::Utils
  def add_cookie_to_header(header, key, value); end
  def add_remove_cookie_to_header(header, key, value = nil); end
  def best_q_match(q_value_header, available_mimes); end
  def build_nested_query(value, prefix = nil); end
  def build_query(params); end
  def byte_ranges(env, size); end
  def clean_path_info(path_info); end
  def clock_time; end
  def delete_cookie_header!(header, key, value = nil); end
  def escape(s); end
  def escape_html(string); end
  def escape_path(s); end
  def get_byte_ranges(http_range, size); end
  def make_delete_cookie_header(header, key, value); end
  def parse_cookies(env); end
  def parse_cookies_header(header); end
  def parse_nested_query(qs, d = nil); end
  def parse_query(qs, d = nil, &unescaper); end
  def q_values(q_value_header); end
  def rfc2109(time); end
  def rfc2822(time); end
  def secure_compare(a, b); end
  def select_best_encoding(available_encodings, accept_encoding); end
  def self.add_cookie_to_header(header, key, value); end
  def self.add_remove_cookie_to_header(header, key, value = nil); end
  def self.best_q_match(q_value_header, available_mimes); end
  def self.build_nested_query(value, prefix = nil); end
  def self.build_query(params); end
  def self.byte_ranges(env, size); end
  def self.clean_path_info(path_info); end
  def self.clock_time; end
  def self.default_query_parser; end
  def self.default_query_parser=(arg0); end
  def self.delete_cookie_header!(header, key, value = nil); end
  def self.escape(s); end
  def self.escape_html(string); end
  def self.escape_path(s); end
  def self.get_byte_ranges(http_range, size); end
  def self.key_space_limit; end
  def self.key_space_limit=(v); end
  def self.make_delete_cookie_header(header, key, value); end
  def self.multipart_part_limit; end
  def self.multipart_part_limit=(arg0); end
  def self.param_depth_limit; end
  def self.param_depth_limit=(v); end
  def self.parse_cookies(env); end
  def self.parse_cookies_header(header); end
  def self.parse_nested_query(qs, d = nil); end
  def self.parse_query(qs, d = nil, &unescaper); end
  def self.q_values(q_value_header); end
  def self.rfc2109(time); end
  def self.rfc2822(time); end
  def self.secure_compare(a, b); end
  def self.select_best_encoding(available_encodings, accept_encoding); end
  def self.set_cookie_header!(header, key, value); end
  def self.status_code(status); end
  def self.unescape(s, encoding = nil); end
  def self.unescape_path(s); end
  def self.valid_path?(path); end
  def set_cookie_header!(header, key, value); end
  def status_code(status); end
  def unescape(s, encoding = nil); end
  def unescape_path(s); end
  def valid_path?(path); end
end
class Rack::Utils::Context
  def app; end
  def call(env); end
  def context(env, app = nil); end
  def for; end
  def initialize(app_f, app_r); end
  def recontext(app); end
end
class Rack::Utils::HeaderHash < Hash
  def [](k); end
  def []=(k, v); end
  def clear; end
  def delete(k); end
  def each; end
  def has_key?(k); end
  def include?(k); end
  def initialize(hash = nil); end
  def initialize_copy(other); end
  def key?(k); end
  def member?(k); end
  def merge!(other); end
  def merge(other); end
  def names; end
  def replace(other); end
  def self.[](headers); end
  def to_hash; end
end
class Rack::Runtime
end
class Rack::BodyProxy
end
class Rack::Request
  include Rack::Request::Env
  include Rack::Request::Helpers
end
module Rack::Request::Env
end
module Rack::Request::Helpers
end
class Rack::Sendfile
end
class Rack::MethodOverride
end
class Rack::Session::SessionId
end
module Rack::Session::Abstract
end
class Rack::Session::Abstract::SessionHash
  include Enumerable
end
class Rack::Session::Abstract::Persisted
end
class Rack::Session::Abstract::PersistedSecure < Rack::Session::Abstract::Persisted
end
class Rack::Session::Abstract::PersistedSecure::SecureSessionHash < Rack::Session::Abstract::SessionHash
end
class Rack::Session::Abstract::ID < Rack::Session::Abstract::Persisted
end
class Rack::Session::Cookie < Rack::Session::Abstract::PersistedSecure
end
class Rack::Session::Cookie::Base64
end
class Rack::Session::Cookie::Base64::Marshal < Rack::Session::Cookie::Base64
end
class Rack::Session::Cookie::Base64::JSON < Rack::Session::Cookie::Base64
end
class Rack::Session::Cookie::Base64::ZipJSON < Rack::Session::Cookie::Base64
end
class Rack::Session::Cookie::Identity
end
class Rack::Session::Cookie::SessionId < Anonymous_Delegator_9
end
class Rack::Head
end
class Rack::ConditionalGet
end
class Rack::ETag
end
class Rack::TempfileReaper
end
class Rack::Files
end
class Rack::Files::BaseIterator
end
class Rack::Files::Iterator < Rack::Files::BaseIterator
end
class Rack::Chunked
  include Rack::Utils
end
class Rack::Chunked::Body
end
class Rack::Chunked::TrailerBody < Rack::Chunked::Body
end
class Rack::Response
  include Rack::Response::Helpers
end
module Rack::Response::Helpers
end
class Rack::Response::Raw
  include Rack::Response::Helpers
end
class Rack::MockRequest
end
class Rack::MockRequest::FatalWarning < RuntimeError
end
class Rack::MockRequest::FatalWarner
end
class Rack::MockResponse < Rack::Response
end
class Rack::Cascade
end
class Rack::CommonLogger
end
class Rack::Config
end
class Rack::ContentLength
  include Rack::Utils
end
class Rack::ContentType
  include Rack::Utils
end
class Rack::Events
end
module Rack::Events::Abstract
end
class Rack::Events::EventedBodyProxy < Rack::BodyProxy
end
class Rack::Events::BufferedResponse < Rack::Response::Raw
end
class Rack::Deflater
end
class Rack::Deflater::GzipStream
end
class Rack::Directory
end
class Rack::Directory::DirectoryBody < Anonymous_Struct_10
end
class Rack::ForwardRequest < Exception
end
class Rack::Recursive
end
module Rack::Handler
end
class Rack::Lint
  include Rack::Lint::Assertion
end
class Rack::Lint::LintError < RuntimeError
end
module Rack::Lint::Assertion
end
class Rack::Lint::InputWrapper
  include Rack::Lint::Assertion
end
class Rack::Lint::ErrorWrapper
  include Rack::Lint::Assertion
end
class Rack::Lint::HijackWrapper
  extend Forwardable
  include Rack::Lint::Assertion
end
class Rack::Lock
end
class Rack::Logger
end
class Rack::MediaType
end
module Rack::Mime
end
class Rack::NullLogger
end
class Rack::Reloader
end
module Rack::Reloader::Stat
end
class Rack::RewindableInput
end
class Rack::Server
end
class Rack::Server::Options
end
class Rack::ShowExceptions
end
class Rack::ShowStatus
end
class Rack::Static
end
class Rack::URLMap
end
module Rack::Multipart
end
class Rack::Multipart::MultipartPartLimitError < Errno::EMFILE
end
class Rack::Multipart::Parser
end
class Rack::Multipart::Parser::BoundedIO
end
class Rack::Multipart::Parser::Collector
  include Enumerable
end
class Rack::Multipart::Parser::Collector::MimePart < Anonymous_Struct_11
end
class Rack::Multipart::Parser::Collector::BufferPart < Rack::Multipart::Parser::Collector::MimePart
end
class Rack::Multipart::Parser::Collector::TempfilePart < Rack::Multipart::Parser::Collector::MimePart
end
class Rack::Auth::AbstractHandler
end
class Rack::Auth::AbstractRequest
end
class Rack::Auth::Basic < Rack::Auth::AbstractHandler
end
class Rack::Auth::Basic::Request < Rack::Auth::AbstractRequest
end
class Rack::Auth::Digest::Params < Hash
end
class Rack::Auth::Digest::Nonce
end
class Rack::Auth::Digest::Request < Rack::Auth::AbstractRequest
end
class Rack::Auth::Digest::MD5 < Rack::Auth::AbstractHandler
end
class Rack::Session::Pool < Rack::Session::Abstract::PersistedSecure
end
