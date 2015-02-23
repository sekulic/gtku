class ArticlesController < ApplicationController
  expose(:article, attributes: :article_params)  
  
  def index
    @articles =Article.paginate(page: params[:page], per_page: 6).order('created_at DESC')
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    self.article = Article.new(article_params)

    if article.save
      redirect_to article, notice: 'Article was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if article.update(article_params)
      redirect_to(article, notice: 'Article was successfully updated.')
    else
      render :edit
    end
  end
  def destroy
    article.destroy
    redirect_to articles_url, notice: 'Article was successfully destroyed.'
  end

  private
    def article_params
      params.require(:article).permit(:title, :description, :text1, :text2, :text3, :text4, :embed1, :embed2, :embed3, :embed4, :p1desescription, :p2description, :p3description, :p4description, :title, :photo1, :photo2, :photo3, :photo4, :category_id)
    end   
end
