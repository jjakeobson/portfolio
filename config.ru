use Rack::Static,
  :urls => ["/img", "/js", "/css", "/min", "/font"],
  :root => "www"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'javascript',
      'Cache-Control' => 'www, max-age=86400'
    },
    File.open('www/index.html', File::RDONLY)
  ]
}
