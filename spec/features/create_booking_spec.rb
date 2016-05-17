feature "create a new booking" do
  scenario "add a new booking to list of bookings" do
    sign_up
    expect { create_booking }.to change(Booking, :count).by(1)
    expect(page).to have_content "Amy's house"
    expect(page).to have_content "Amy's house is nice"
    expect(page).to have_content "£30"
    expect(Space.first.name).to eq("Amy's house")
  end

  # scenario "cannot write a space if not logged in" do
  #   sign_up
  #   logout
  #   visit "/spaces/new"
  #   expect(page).to have_content "Please login to create a space"
  # end
  #
  # scenario "cannot create space if no name, description, price" do
  #   sign_up
  #   params1 = {name:"", description:"Amy's house is nice", price:"£30"}
  #   params2 = {name:"Amy's house", description:"", price:"£30"}
  #   params3 = {name:"Amy's house", description:"Amy's house is nice", price:""}
  #   expect { create_space(params1) }.to change(Space, :count).by(0)
  #   expect { create_space(params2) }.to change(Space, :count).by(0)
  #   expect { create_space(params3) }.to change(Space, :count).by(0)
  # end
end
