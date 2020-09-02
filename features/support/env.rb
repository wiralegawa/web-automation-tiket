require 'rspec'
require 'page-object'
require 'require_all'
require 'page-object/page_factory'

require_all File.dirname(__FILE__) + '/pages'

PageObject::PageFactory.routes = {
    :default => [HomePage, :ticketHome]
}

World(PageObject::PageFactory)