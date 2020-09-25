describe 'creating_user' do
    it 'existing_user' do
        @body = {
                "ID": 1,
                "UserName": "User 1",
                "Password": "Password1"              
        }.to_json        

        @create_existing = Createuser.post('/api/Users', body: @body)
        puts @create_existing.body
        puts @create_existing.code
        expect(@create_existing.code).not_to eql 200
        
    end

    it 'new_user' do
        @body = {
            "ID": 11,
            "UserName": "User 11",
            "Password": "Password11"              
        }.to_json

        @create_user = Createuser.post('/api/Users', body: @body)
        puts @create_user.body
        puts @create_user.code
        expect(@create_user.code).to eql 200

        @user_eleven = Retrieveuser.get('/api/Users/11')
        puts @user_eleven
        expect(@user_eleven.code).to eql 200
        expect(@user_eleven.parsed_response['ID']).to eql 11
        expect(@user_eleven.parsed_response['UserName']).to eql 'User 11'
        expect(@user_eleven.parsed_response['Password']).to eql 'Password11'
        
    end
end