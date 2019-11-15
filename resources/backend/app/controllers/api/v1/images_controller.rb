class Api::V1::ImagesController < Api::V1::ApiController
  def index
  	render json: Image.all, status: 200
  end

  def create
    image = Image.new(image_params)

    if image.save
    	render json: image, status: 200
    else
    	render json: {
        error: image.errors.full_messages.to_sentence
      }, status: 404
    end
  end

  def destroy
    image = Image.find_by(id: params[:id])

    if image && image.destroy
      render json: { message: "Removed" }, status: 200
    else
      render json: { message: "Unremoved" }, status: 404
    end
  end

  private

  def image_params
  	params.permit(:name, :url)
  end
end