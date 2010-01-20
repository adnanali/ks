class ContentsController < ApplicationController
  def index
    @contents = Content.all
  end
  
  def show
    @content = Content.find(params[:id])
  end
  
  def new
    @content_type = "Post"
    @content_type = @content_type.underscore
    @content = @content_type.camelize.constantize.new
    #@content = Content.new
  end
  
  def create
    #@content = Content.new(params[:content])
    @content_type = params[:c][:type].underscore;
    @content = params[:c][:type].camelize.constantize.new(params[@content_type.to_sym])
    if @content.save
      flash[:notice] = "Successfully created content."
      redirect_to content_path(@content.id)
    else
      render :action => 'new'
    end
  end
  
  def edit
    @content = Content.find(params[:id])
  end
  
  def update
    @content = Content.find(params[:id])
    if @content.update_attributes(params[:content])
      flash[:notice] = "Successfully updated content."
      redirect_to @content
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @content = Content.find(params[:id])
    @content.destroy
    flash[:notice] = "Successfully destroyed content."
    redirect_to contents_url
  end
end
