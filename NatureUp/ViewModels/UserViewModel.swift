//
//  UserViewModel.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/13.
//

import Foundation
import Firebase

class UserViewModel: ObservableObject {
    
    @Published var list = [User]()
    @Published var user = User(id: "", name: "", exp: 0, points: 0, userPic: "")
    
    //MARK: - Create
    
    func addData(name: String, userPic: String) {
        
        let db = Firestore.firestore()
        
        db.collection("users").addDocument(data: ["name":name, "exp":0, "points": 0, "userPic": userPic]) { error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                // Call get data to retrieve latest data
                self.getAllData()
            }
            else {
                // Handle the error
            }
        }
    }
    
    //MARK: - Read
    
    func getAllData() {
        
        // Get a reference to the database
        let db = Firestore.firestore()
        
        // Read the documents at a specific path
        db.collection("users").getDocuments { snapshot, error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                if let snapshot = snapshot {
                    
                    // Update the list property in the main thread
                    DispatchQueue.main.async {
                        
                        // Get all the documents and create Todos
                        self.list = snapshot.documents.map { d in
                            
                            // Create a Todo item for each document returned
                            return User(
                                id: d.documentID,
                                name: d["name"] as? String ?? "",
                                exp: d["exp"] as? Int ?? 0,
                                points: d["points"] as? Int ?? 0,
                                userPic: d["userPic"] as? String ?? ""
                            )
                        }
                    }
                }
            }
            else {
                // Handle the error
            }
        }
    }
    
    func getUser(id: String) {
        
        // Get a reference to the database
        let db = Firestore.firestore()
        
        // Read the documents at a specific path
        db.collection("users").document(id).getDocument { snapshot, error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                if let snapshot = snapshot, snapshot.exists {
                    
                    // Update the list property in the main thread
                    DispatchQueue.main.async {
                        let snapshotData = snapshot.data()
                        self.user = User(
                            id: id,
                            name: snapshotData!["name"] as? String ?? "",
                            exp: snapshotData!["exp"] as? Int ?? 0,
                            points: snapshotData!["points"] as? Int ?? 0,
                            userPic: snapshotData!["userPic"] as? String ?? ""
                        )
                    }
                }
            }
            else {
                // Handle the error
            }
        }
    }
    
    //MARK: - Update
    
    func updateData(userToUpdate: User, field: Any) {
        
        let db = Firestore.firestore()
        
        // Set the data to update
        db.collection("users").document(userToUpdate.id).setData(["\(field)": field], merge: true) { error in
            
            // Check for errors
            if error == nil {
                // Get the new data
                self.getAllData()
            }
        }
    }
    
    func updateUser(id: String, info: [AnyHashable : Any]) {
        let db = Firestore.firestore()
        
        // Read the documents at a specific path
        db.collection("users").document(id).getDocument { snapshot, error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                if let snapshot = snapshot, snapshot.exists {
                    snapshot.reference.updateData(info)
                    self.getUser(id: id)
                }
            }
            else {
                // Handle the error
            }
        }
    }
    
    //MARK: - Delete
    
    func deleteData(userToDelete: User) {
        
        // Get a reference to the database
        let db = Firestore.firestore()
        
        // Specify the document to delete
        db.collection("users").document(userToDelete.id).delete { error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                // Update the UI from the main thread
                DispatchQueue.main.async {
                    
                    // Remove the todo that was just deleted
                    self.list.removeAll { user in
                        
                        // Check for the todo to remove
                        return user.id == userToDelete.id
                    }
                }
                
                
            }
        }
        
    }
}
