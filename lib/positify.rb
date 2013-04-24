require 'positify/version'

module Positify

  def self.it(*args, &block)
    if block_given?
      raise(ArgumentError, "You can only pass in one options Hash in block mode, not #{args.inspect}") if args.size > 1
      object  = block.call
      options = args.shift || {}
    else
      case args.size
      when 1
        object  = args.shift
        options = {}
        raise(ArgumentError, "You forgot the brackets in your call. Try: Positify::it(...) do") if object.is_a?(Hash)
      when 2
        object  = args.shift
        options = args.shift
      else
        raise ArgumentError, "You must pass in an object and may pass in an options Hash, not #{args.inspect}"
      end
    end

    options[:max] = it(options[:max]) if options[:max]

    return 1 unless object.respond_to?(:to_i)
    result = object.to_i.abs > 0 ? object.to_i.abs : 1
    result = options[:max] if options[:max] && options[:max] < result
    result
  end

end
