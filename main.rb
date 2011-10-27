require 'sinatra'
require 'pygmentize'

get '/' do
  source = "function foo() { return 'bar'; }"

  Pygmentize.process(source, :javascript)
end
