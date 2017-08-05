module SetTitleConcern
  extend ActiveSupport::Concern
  
 included do
  before_action :set_title
  
    def set_title
      @page_title = "DevcampPortfolio | My Portfolio Website"
      @seo_keywords = "Tobias Hales portfolio"
    end
 end
end
