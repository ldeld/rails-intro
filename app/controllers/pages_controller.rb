class PagesController < ApplicationController
  def about
    # write code that retireves information from database
    @members = ['camila', 'pato', 'lorenzo', 'fanny', 'flora']
    if params['member']
      @members = @members.select { |member| member.start_with?(params['member']) }
    end
  end

  def home 
  end

  def contact
  end
end
