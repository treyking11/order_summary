class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  before_action :set_loop_arrays, only: [:edit, :new]
  # GET /entries
  # GET /entries.json
  def index
    @entries = Entry.new
  end

  # GET /entries/1
  # GET /entries/1.json
  def show
    # @output = @entry.order(:created_at).last
    respond_to do |format|
      format.html
      format.csv do
        x = CSV.generate do |csv|
          csv << @entry.attributes.keys
          csv << @entry.attributes.values
        end
        send_data x, filename: "Entry ID ##{@entry.id} (#{Date.today}).csv"
      end
    end
  end

  # GET /entries/new
  def new
    # @options_for_platform = Entry.options_for_platform
    @entry = Entry.new
  end

  # GET /entries/1/edit
  def edit
    @metros = Entry.metros
  end
  # POST /entries
  # POST /entries.json
  def create
    @entry = Entry.new(entry_params)
    #binding.pry
    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    respond_to do |format|

      if @entry.update(entry_params)
        format.html { redirect_to @entry, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(
        :name,
        :description,
        :start_date,
        :end_date,
        :created_at,
        :updated_at,
        :imp_quantity,
        :advertiser_rate,
        :states,
        :zip_codes,
        :address,
        :agency_name,
        :advertiser_name,
        :advertiser_url,
        :geofence_poi,
        :audiences_prem => [],
        :platforms => [],
        :audiences => [],
        :metros => [],
        :carriers => [],
        :content_cats => [],
        :operating_sys => [],
        :creative_types => [],
        )
    end

    def set_loop_arrays
      @metros = Entry.metros
      @creative_types = Entry.creative_types
      @content = Entry.content
      @carriers = Entry.carriers
      @platforms = Entry.platforms
      @audiences = Entry.audiences
      @audiences_prem = Entry.audiences_prem
      @operating_system = Entry.operating_system
    end

end
