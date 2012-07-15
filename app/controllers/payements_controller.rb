class PayementsController < ApplicationController
   before_filter :signed_in_user, only: [:new,:create, :edit, :update,:delete]
  # GET /payements
  # GET /payements.json
  def index
    @payements = Payement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @payements }
    end
  end

  # GET /payements/1
  # GET /payements/1.json
  def show
    @payement = Payement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @payement }
    end
  end

  # GET /payements/new
  # GET /payements/new.json
  def new
    @notebook=Notebook.find(params[:notebook_id])
    @payement = Payement.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @payement }
    end
  end

  # GET /payements/1/edit
  def edit
    @payement = Payement.find(params[:id])
  end

  # POST /payements
  # POST /payements.json
  def create
    @payement = Payement.new(params[:payement])

    respond_to do |format|
      if @payement.save

        format.html { redirect_to @payement, notice: 'Payement was successfully created.' }
        format.json { render json: @payement, status: :created, location: @payement }
      else
        format.html { render action: "new" }
        format.json { render json: @payement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /payements/1
  # PUT /payements/1.json
  def update
    @payement = Payement.find(params[:id])

    respond_to do |format|
      if @payement.update_attributes(params[:payement])
        format.html { redirect_to @payement, notice: 'Payement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @payement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payements/1
  # DELETE /payements/1.json
  def destroy
    @payement = Payement.find(params[:id])
    @payement.destroy

    respond_to do |format|
      format.html { redirect_to payements_url }
      format.json { head :no_content }
    end
  end
end
