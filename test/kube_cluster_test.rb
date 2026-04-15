# frozen_string_literal: true

require "test_helper"

class KubeClusterTest < Minitest::Test
  def test_version
    refute_nil KubeCluster::VERSION
  end
end
