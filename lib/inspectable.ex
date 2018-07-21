defprotocol Inspectable do
  @fallback_to_any true
  def dump(element)
end

defimpl Inspectable, for: BitString do
  def dump(element), do: "String: #{element}"
end

defimpl Inspectable, for: Integer do
  def dump(integer), do: "Integer: #{integer}"
end

defimpl Inspectable, for: Any do
  def dump(_), do: "Any!"
end
