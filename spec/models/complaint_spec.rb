<<<<<<< HEAD
require 'rails_helper'

RSpec.describe Complaint, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
=======
require 'rails_helper'

RSpec.describe Complaint, type: :model do
 # pending "add some examples to (or delete) #{__FILE__}"
 describe 'validations' do
  it { should validate_presence_of(:subject) }
  it { should validate_presence_of(:description) }
 end

 describe 'associations' do
  it { should belong_to(:user) } 
 end

end
>>>>>>> 2e9cca6750febd46432c749f3ddfa3e268892af2
