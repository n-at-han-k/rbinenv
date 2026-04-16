# frozen_string_literal: true

require_relative "rbinenv/version"

require 'rbconfig'
require 'debug'
require 'logger'
require 'rubyshell'

module Rbinenv
  module_function

  class UnknownCpuArchError < StandardError; end

  def install
  end

  def download
  end

  def update
  end

  def arch
    RbConfig::CONFIG['host_cpu'].then do |cpu|
      case cpu
      when /arm64|aarch64/ then :arm
      when /x86_64|amd64/  then :x64
      else
        raise UnknownCpuArchError.new(
          "\nDetected your arch as: `#{cpu}`" +
          "\nNot sure if it's either arm64 or x64"
        )
      end
    end
  end
end
