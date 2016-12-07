class DetallefacturasController < ApplicationController
  before_action :set_detallefactura, only: [:show, :edit, :update, :destroy]

  # GET /detallefacturas
  # GET /detallefacturas.json
  def index
    @detallefacturas = Detallefactura.all.paginate(page: params[:page],per_page: 5)
    .select('detallefacturas.*',
              'mascots.nombrema',
              'servicios.descripcionse',
              'productos.nombrep')
      .joins( :mascot, :servicio, :producto, :factura )
    @totalgastofacturas = 0.00
  end

  # GET /detallefacturas/1
  # GET /detallefacturas/1.json
  def show
  end

  # GET /detallefacturas/new
  def new
    @detallefactura = Detallefactura.new
  end

  # GET /detallefacturas/1/edit
  def edit
  end

  # POST /detallefacturas
  # POST /detallefacturas.json
  def create
    @detallefactura = Detallefactura.new(detallefactura_params)

    respond_to do |format|
      if @detallefactura.save
        format.html { redirect_to @detallefactura, notice: 'Detallefactura was successfully created.' }
        format.json { render :show, status: :created, location: @detallefactura }
      else
        format.html { render :new }
        format.json { render json: @detallefactura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detallefacturas/1
  # PATCH/PUT /detallefacturas/1.json
  def update
    respond_to do |format|
      if @detallefactura.update(detallefactura_params)
        format.html { redirect_to @detallefactura, notice: 'Detallefactura was successfully updated.' }
        format.json { render :show, status: :ok, location: @detallefactura }
      else
        format.html { render :edit }
        format.json { render json: @detallefactura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detallefacturas/1
  # DELETE /detallefacturas/1.json
  def destroy
    @detallefactura.destroy
    respond_to do |format|
      format.html { redirect_to detallefacturas_url, notice: 'Detallefactura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detallefactura
      @detallefactura = Detallefactura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detallefactura_params
      params.require(:detallefactura).permit(:factura_id, :mascot_id, :servicio_id, :producto_id, :cantidad, :prevenp)
    end
end
