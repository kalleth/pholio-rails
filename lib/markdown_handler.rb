# Thanks, Jacob. Thacob. http://stackoverflow.com/questions/4163560/how-can-i-automatically-render-partials-using-markdown-in-rails-3/10131299#10131299
require 'rdiscount'

module MarkdownHandler
  def self.erb
    @erb ||= ActionView::Template.registered_template_handler(:erb)
  end

  def self.call(template)
    compiled_source = erb.call(template)
    "RDiscount.new(begin;#{compiled_source};end).to_html"
  end
end

ActionView::Template.register_template_handler :md, MarkdownHandler
