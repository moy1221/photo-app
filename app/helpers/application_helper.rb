module ApplicationHelper

  def contentful
    @client ||= Contentful::Client.new(
        access_token: ENV['CONTENTFUL_ACCESS_TOKEN'],
        space: ENV['CONTENTFUL_SPACE_ID'],
        dynamic_entries: :auto,
        raise_errors: true
    )
  end

  def contentful_management
    @client ||= Contentful::Management::Client.new(ENV['CONTENTFUL_MANAGEMENT_TOKEN'])
    Contentful::Management::Space.find(@client, ENV['CONTENTFUL_SPACE_ID'])
  end

  def markdown text
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(text).html_safe
  end

end
