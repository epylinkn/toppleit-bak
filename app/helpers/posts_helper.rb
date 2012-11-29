module PostsHelper
  def get_markdown text
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
      :autolink => true)
    
    markdown.render(text)
  end
end