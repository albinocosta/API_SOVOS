describe 'retrieving_user' do
    
    it 'existing_user' do
        @user_one = Retrieveuser.get('/api/Users/1')
        puts @user_one
        expect(@user_one.code).to eql 200
        expect(@user_one.parsed_response['ID']).to eql 1
        expect(@user_one.parsed_response['UserName']).to eql 'User 1'
        expect(@user_one.parsed_response['Password']).to eql 'Password1'
    end

    it 'non_existing_user' do
        @user_eleven = Retrieveuser.get('/api/Users/11')
        puts @user_eleven.code
        expect(@user_eleven.code).to eql 404

    end
end