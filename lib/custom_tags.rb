module CustomTags
  def source(opts)
    "<pre><code>#{opts[:text]}</code></pre>"
  end
  
  def test(opts)
    "<h1>#{opts[:text]}</h1>"
  end
end