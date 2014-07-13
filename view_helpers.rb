module ViewHelpers

  # yaml data
  def data
    d||=YAML.load_file(File.join(File.dirname(__FILE__), 'data.yml'))
    return d
  end

  # nav li active link
  def nav_link_to(name, href, option = {})
    here = request.path.gsub('index.html', '')
    if href == here
      active = "active"
    end
    content_tag(:li, link_to(name, href, :class => active) )
  end

  def sentences(count=1)
    lorem_sentences(count)
  end

  def zh_sentences(count=1)
    zh_lorem_sentences(count)
  end

  def words(count=1)
    lorem_words(count)
  end

  def zh_words(count=1)
    zh_lorem_words(count)
  end

  def paragraphs(count=1)
    lorem_paragraphs(count)
  end

  def zh_paragraphs(count=1)
    zh_lorem_paragraphs(count)
  end

  def image(size="300x200")
    image_tag lorem_image(size)
  end

end
