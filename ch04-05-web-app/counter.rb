require 'sinatra'
require 'redis'

set :bind, '0.0.0.0'

configure do
  $redis = Redis.new(:host => 'redis')
end

get '/' do
  count = $redis.incr('count')

  "<h1>Hello Spoon!</h1>"\
  "<p>This page has been viewd #{count} times!</p>"
end
