class PatientsController < ApplicationController
  # GET /patients
  # GET /patients.json

  before_filter :check_in

  def check_in
    if params[:patient] && params[:patient]["arrived"] == true
      @patient = Patient.find params[:id]
      time_now = DateTime.now
      @patient.arrival_time = time_now  
      @patient.save    
    end
  end

  def index
    @patients = Patient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patients }
    end
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    @patient = Patient.find(params[:id])

    # Set arrival_status to Late or On-time
       

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient }
    end
  end

  # GET /patients/new
  # GET /patients/new.json
  def new
    @patient = Patient.new
    #@patient.appointments << Appointment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patient }
    end
  end

  # GET /patients/1/edit
  def edit
    @patient = Patient.find(params[:id])
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(params[:patient])    

    respond_to do |format|
      if @patient.save
        format.html { redirect_to patients_path, notice: '#{@patient.name}\'s appointment created.' }
        format.json { render json: @patient, status: :created, location: @patient }
      else
        format.html { render action: "new" }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patients/1
  # PUT /patients/1.json
  def update
    @patient = Patient.find(params[:id])

    respond_to do |format|
      if @patient.update_attributes(params[:patient])
        format.html { redirect_to patients_path, notice: '#{@patient.name}\'s appointment updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy

    respond_to do |format|
      format.html { redirect_to patients_url }
      format.json { head :no_content }
    end
  end

  def docusign

    client = DocusignRest::Client.new
    document_envelope_response = client.create_envelope_from_document(
      email: {
        subject: "test email subject",
        body: "this is the email body and it's large!"
      },
      # If embedded is set to true  in the signers array below, emails
      # don't go out to the signers and you can embed the signature page in an 
      # iFrame by using the client.get_recipient_view method
      signers: [
        {
          embedded: true,
          name: 'Test Guy',
          email: 'someone@gmail.com',
          role_name: 'Issuer',
          sign_here_tabs: [
            {
              anchor_string: 'sign_here_1',
              anchor_x_offset: '140',
              anchor_y_offset: '8'
            }
          ]
        },
        {
          embedded: true,
          name: 'Test Girl',
          email: 'someone+else@gmail.com',
          role_name: 'Attorney',
          sign_here_tabs: [
            {
              anchor_string: 'sign_here_2',
              anchor_x_offset: '140',
              anchor_y_offset: '8'
            },
            {
              anchor_string: 'sign_here_3',
              anchor_x_offset: '140',
              anchor_y_offset: '8'
            }
          ]
        }
      ],
      files: [
        {path: '/assets/images/Child Immunization Schedule.pdf', name: 'test.pdf'},
        {path: '/Absolute/path/to/test2.pdf', name: 'test2.pdf'}
      ],
      status: 'sent'
    )

  end
end
