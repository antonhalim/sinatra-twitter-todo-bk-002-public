describe "App" do
  it "handles GET to '/'" do 
    get '/'
    expect(last_response).to be_ok
    expect(last_response.status).to eq(200)
  end
  
end