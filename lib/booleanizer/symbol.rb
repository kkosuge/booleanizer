class Symbol
  def method_missing(method_name, *args, &block)
    if method_name.to_s.end_with? "?"
      self == method_name.to_s[0..-2].to_sym
    else
      super
    end
  end
end
