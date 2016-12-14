defmodule Atoms do
  use Koans

  @intro "Atoms"

  koan "Atoms are sort of like strings" do
    adam = :human
    assert adam == :human
  end

  koan "Strings can be converted to atoms, and vice versa" do
    assert String.to_atom("atomized") == :atomized
    assert Atom.to_string(:stringified) == "stringified"
  end

  koan "It is surprising to find out that booleans are atoms" do
    assert is_atom(true) == true
    assert is_atom(false) == true
    assert :true == true
    assert :false == false
  end

  koan "Modules are also atoms" do
    assert is_atom(String) == true
  end

  koan "Functions can be called on the atom too" do
    assert :"Elixir.String" == String
    assert :"Elixir.String".upcase("hello") == "HELLO"
  end
end
