# Quickchativa
Rails API server for chat application.

This is a Rails API server that uses JWT for authentication.
To access User, Chat and Room models, the client MUST have the authenticated token.

## Getting started

-   Creating the actual User.

    Open the rails console and create a dummy user.
    
    ```
    User.create(:email => 'test@mail.com', :password => '123', :password_confirmation => '123')
    ```
- Authenticating the User.
    
    Create a server request
    ```
    curl -H "Content-Type: application/json" -X POST -d '{"email":"test@mail.com","password":"123"}' http://localhost:3000/api/v1/authenticate
    ```
    This will return the TOKEN which you can attach to your header request in accessing the other routes.
    
- Sample Request Header
    
    Request to chats
    ```
    curl -H "Authorization: SAMPLE_TOKEN" http://localhost:3000/api/v1/chats
    ```
    
    Request to rooms
    ```
    curl -H "Authorization: SAMPLE_TOKEN" http://localhost:3000/api/v1/rooms
    ```

Without a validated TOKEN, you cannot access the anything on the server. 

## Authors

* **Sheenan Tenepre** - [Github](https://github.com/therealedsheenan)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
