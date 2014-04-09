class Content::PagesController < ApplicationController
	
  def index
  end

  def page_about
  end

  def page_services
  end

  def page_pricing
  end

  def page_coming_soon
  end

  def page_faq
  end

  def page_search
  end

  def page_gallery
  end

  def page_registration
  end

  def page_login
  end

  def page_404
  end

  def page_clients
  end

  def page_privacy
  end

  def page_terms
  end

  def page_column_left
  end

  def page_column_right
  end

  def feature_grid
  end

  def feature_typography
  end

  def feature_thumbnail
  end

  def feature_component
  end

  def feature_navigation
  end

  def feature_table
  end

  def feature_form
  end

  def feature_icons
  end

  def feature_button
  end

  def portfolio
  end

  def portfolio_item
    respond_to do |format|
      format.html {render :layout => 'content/portfolio_item'}
    end
  end

  def portfolio_2columns
  end

  def portfolio_3columns
  end

  def portfolio_4columns
  end

  def blog
  end

  def blog_item
  end

  def blog_left_sidebar
  end

  def blog_item_left_sidebar
  end

  def page_contact
  end

  def page_contact1
  end

end
