class VisaDetailsController < ApplicationController
  before_action :set_visa_detail, only: %i[ show edit update destroy ]

  # GET /visa_details or /visa_details.json
  def index
    @visa_details = VisaDetail.all
  end

  # GET /visa_details/new
  def new
    @visa_detail = VisaDetail.new
    @visa_detail.build_user
  end

  # POST /visa_details or /visa_details.json
  def create
    byebug
    @visa_detail = VisaDetail.new(visa_detail_params.except(:stay))
    @visa_detail.stay = visa_detail_params[:stay].to_i
    respond_to do |format|
      if @visa_detail.save
        if params[:user].present? && params[:user].fetch(:relationship_ids).present?
          @relationships = Relationship.where(:id => params[:user][:relationship_ids])
          @visa_detail.user.relationships << @relationships
        end
        format.html { redirect_to visa_details_path, notice: "Visa detail was successfully created." }
        format.json { render :show, status: :created, location: @visa_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @visa_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def visa_detail_params
    params.require(:visa_detail).permit(:used_pen,
      :outside_country, :inside_country, :visiting_from, :visiting_to,
      :is_more_occasion, :types_of_occasion,
      :date_of_extend, :detailed_description,
      :image, :name_of_city, :name_of_state,
      :name_of_country, :stay,
      user_attributes: [:family_name, :gender, :given_names, :date_of_birth, :passport_number,
        :country_of_passport, :passport_nationality, :date_of_issue, :date_of_expired,
        :issueing_authority]
    )
  end
end
