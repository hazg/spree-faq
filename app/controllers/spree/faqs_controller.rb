module Spree
  class FaqsController < Spree::StoreController
    helper 'spree/products'

    def index
      @categories = Spree::QuestionCategory.all :include => :questions
    end
  
    def show
      @category = Spree::QuestionCategory.find_by_name params[:category], :include => :questions
      return redirect_to :faq unless @category
    end

    def accurate_title
      I18n.t 'frequently_asked_questions'
    end
    
  end
end
