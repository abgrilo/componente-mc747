class ClientesController < ApplicationController
  # GET /clientes
  # GET /clientes.xml
  def index
    @clientes = Cliente.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clientes }
    end
  end

  # GET /clientes/1
  # GET /clientes/1.xml
  def show
    id = params[:id]
    cpf_consulta = id[id.length-1..id.length]

    if cpf_consulta == "2"
     saida = {:erro => "-1"}
     respond_to do |format|
       format.js  { render :json => saida}
       format.xml  { render :xml => saida}
     end
     return
    end

    consulta = Cliente.where(:cpf => cpf_consulta)
    if consulta.present?
      @cliente = consulta[0]
    else
      consulta = Cliente.where(:cpf => params[:id])
      if consulta.present?
        @cliente = consulta[0]
      else
        @cliente = Cliente.find(params[:id])
      end
    end

    if @cliente
      @cliente.cpf = id
    end
    respond_to do |format|
      format.html # show.html.erb
      format.js  { render :json => @cliente}
      format.xml  { render :xml => @cliente }
    end
  end

  # GET /clientes/new
  # GET /clientes/new.xml
  def new
    @cliente = Cliente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cliente }
    end
  end

  # GET /clientes/1/edit
  def edit
    @cliente = Cliente.find(params[:id])
  end

  # POST /clientes
  # POST /clientes.xml
  def create
    @cliente = Cliente.new(params[:cliente])

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to(@cliente, :notice => 'Cliente was successfully created.') }
        format.xml  { render :xml => @cliente, :status => :created, :location => @cliente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cliente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clientes/1
  # PUT /clientes/1.xml
  def update
    @cliente = Cliente.find(params[:id])

    respond_to do |format|
      if @cliente.update_attributes(params[:cliente])
        format.html { redirect_to(@cliente, :notice => 'Cliente was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cliente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.xml
  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy

    respond_to do |format|
      format.html { redirect_to(clientes_url) }
      format.xml  { head :ok }
    end
  end

end
