get '/' do
  @gemfile = Pygmentize.process(File.open('Gemfile', 'r').read, :ruby)
  @source = Pygmentize.process(File.open(__FILE__, 'r').read, :ruby)
  @config = Pygmentize.process(File.open('config.ru', 'r').read, :ruby)
  erb :index
end
