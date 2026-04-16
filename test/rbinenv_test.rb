# frozen_string_literal: true

require "test_helper"

class RbinenvTest < Minitest::Test
  def test_version
    refute_nil Rbinenv::VERSION
  end
end
