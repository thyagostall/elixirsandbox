defmodule ElixirsandboxTest do
  use ExUnit.Case
  doctest Elixirsandbox

  test "greets the world" do
    assert Elixirsandbox.hello() == :world
  end
end
