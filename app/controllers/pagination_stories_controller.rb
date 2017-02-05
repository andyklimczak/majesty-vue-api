class PaginationStoriesController < ApplicationController
  before_action :set_pagination_story, only: [:show, :update, :destroy]

  # GET /pagination_stories
  def index
    @pagination_stories = PaginationStory.all

    paginate json: @pagination_stories, per_page: 15, max_per_page: 200
  end

  # GET /pagination_stories/1
  def show
    render json: @pagination_story
  end

  # POST /pagination_stories
  def create
    @pagination_story = PaginationStory.new(pagination_story_params)

    if @pagination_story.save
      render json: @pagination_story, status: :created, location: @pagination_story
    else
      render json: @pagination_story.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pagination_stories/1
  def update
    if @pagination_story.update(pagination_story_params)
      render json: @pagination_story
    else
      render json: @pagination_story.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pagination_stories/1
  def destroy
    @pagination_story.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagination_story
      @pagination_story = PaginationStory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pagination_story_params
      params.require(:pagination_story).permit(:plot, :writer, :upvotes)
    end
end
