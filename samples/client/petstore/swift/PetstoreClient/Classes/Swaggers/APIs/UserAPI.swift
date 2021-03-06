//
// UserAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import PromiseKit

extension PetstoreClientAPI {
    
    public class UserAPI: APIBase {
    
        /**
         
         Create user
         
         - POST /user
         - This can only be done by the logged in user.
         
         - parameter body: (body) Created user object

         - returns: RequestBuilder<Void> 
         */
        public class func createUser(body body: User?) -> RequestBuilder<Void> {
            let path = "/user"
            let URLString = PetstoreClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Creates list of users with given input array
         
         - POST /user/createWithArray
         - 
         
         - parameter body: (body) List of user object

         - returns: RequestBuilder<Void> 
         */
        public class func createUsersWithArrayInput(body body: [User]?) -> RequestBuilder<Void> {
            let path = "/user/createWithArray"
            let URLString = PetstoreClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Creates list of users with given input array
         
         - POST /user/createWithList
         - 
         
         - parameter body: (body) List of user object

         - returns: RequestBuilder<Void> 
         */
        public class func createUsersWithListInput(body body: [User]?) -> RequestBuilder<Void> {
            let path = "/user/createWithList"
            let URLString = PetstoreClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Logs user into the system
         
         - GET /user/login
         - 
         - examples: [{contentType=application/json, example="aeiou"}, {contentType=application/xml, example=string}]
         - examples: [{contentType=application/json, example="aeiou"}, {contentType=application/xml, example=string}]
         
         - parameter username: (query) The user name for login
         - parameter password: (query) The password for login in clear text

         - returns: RequestBuilder<String> 
         */
        public class func loginUser(username username: String?, password: String?) -> RequestBuilder<String> {
            let path = "/user/login"
            let URLString = PetstoreClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "username": username,
                "password": password
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<String>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Logs out current logged in user session
         
         - GET /user/logout
         - 

         - returns: RequestBuilder<Void> 
         */
        public class func logoutUser() -> RequestBuilder<Void> {
            let path = "/user/logout"
            let URLString = PetstoreClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Get user by user name
         
         - GET /user/{username}
         - 
         - examples: [{contentType=application/json, example={
  "id" : 1,
  "username" : "johnp",
  "firstName" : "John",
  "lastName" : "Public",
  "email" : "johnp@swagger.io",
  "password" : "-secret-",
  "phone" : "0123456789",
  "userStatus" : 0
}}]
         
         - parameter username: (path) The name that needs to be fetched. Use user1 for testing.

         - returns: RequestBuilder<User> 
         */
        public class func getUserByName(username username: String) -> RequestBuilder<User> {
            var path = "/user/{username}"
            path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(username)", options: .LiteralSearch, range: nil)
            let URLString = PetstoreClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<User>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Updated user
         
         - PUT /user/{username}
         - This can only be done by the logged in user.
         
         - parameter username: (path) name that need to be deleted
         - parameter body: (body) Updated user object

         - returns: RequestBuilder<Void> 
         */
        public class func updateUser(username username: String, body: User?) -> RequestBuilder<Void> {
            var path = "/user/{username}"
            path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(username)", options: .LiteralSearch, range: nil)
            let URLString = PetstoreClientAPI.basePath + path
            
            let parameters = body?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Delete user
         
         - DELETE /user/{username}
         - This can only be done by the logged in user.
         
         - parameter username: (path) The name that needs to be deleted

         - returns: RequestBuilder<Void> 
         */
        public class func deleteUser(username username: String) -> RequestBuilder<Void> {
            var path = "/user/{username}"
            path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(username)", options: .LiteralSearch, range: nil)
            let URLString = PetstoreClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
        }
    
    }
}
