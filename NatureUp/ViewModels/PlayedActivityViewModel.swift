//
//  PlayedActivityViewModel.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/13.
//

import Foundation
import Firebase

class PlayedActivityViewModel: ObservableObject {
    
    @Published var list = [PlayedActivity]()
    
    func shuffleData() {
        self.list.shuffle()
    }
    
    //MARK: - Create
    
    func addData(name: String, picture: String, userId: String) {
        
        let db = Firestore.firestore()
        
        db.collection("playedActivities").addDocument(data: ["name":name, "picture":picture, "score": 0, "timestamp": NSDate().timeIntervalSince1970, "userId": userId]) { error in
            
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
        db.collection("playedActivities").getDocuments { snapshot, error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                if let snapshot = snapshot {
                    
                    // Update the list property in the main thread
                    DispatchQueue.main.async {
                        
                        // Get all the documents and create Todos
                        self.list = snapshot.documents.map { d in
                            
                            // Create a Todo item for each document returned
                            return PlayedActivity(
                                id: d.documentID,
                                name: d["name"] as? String ?? "",
                                timestamp: d["timestamp"] as? Timestamp ?? Timestamp.init(),
                                score : d["score"] as? Int ?? 0,
                                userId: d["userId"] as? String ?? ""
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
    
    func getQueryData(userId: String) {
        
        // Get a reference to the database
        let db = Firestore.firestore()
        
        // Read the documents at a specific path
        db.collection("playedActivities").whereField("userId", isNotEqualTo: userId).getDocuments { snapshot, error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                if let snapshot = snapshot {
                    
                    // Update the list property in the main thread
                    DispatchQueue.main.async {
                        // Get all the documents and create Todos
                        self.list = snapshot.documents.map { d in
                            
                            // Create a Todo item for each document returned
                            return PlayedActivity(
                                id: d.documentID,
                                name: d["name"] as? String ?? "",
                                timestamp: d["timestamp"] as? Timestamp ?? Timestamp.init(),
                                score : d["score"] as? Int ?? 0,
                                userId: d["userId"] as? String ?? ""
                            )
                        }
                        .shuffled()
                    }
                }
            }
            else {
                // Handle the error
            }
        }
    }
    
    //MARK: - Update
    
    func updateData(playedActivityToUpdate: PlayedActivity, field: Any) {
        
        let db = Firestore.firestore()
        
        // Set the data to update
        db.collection("playedActivities").document(playedActivityToUpdate.id).setData(["\(field)": field], merge: true) { error in
            
            // Check for errors
            if error == nil {
                // Get the new data
                self.getAllData()
            }
        }
    }
    
    //MARK: - Delete
    
    func deleteData(playedActivityToDelete: PlayedActivity) {
        
        // Get a reference to the database
        let db = Firestore.firestore()
        
        // Specify the document to delete
        db.collection("plyedActivities").document(playedActivityToDelete.id).delete { error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                // Update the UI from the main thread
                DispatchQueue.main.async {
                    
                    // Remove the todo that was just deleted
                    self.list.removeAll { activity in
                        
                        // Check for the todo to remove
                        return activity.id == playedActivityToDelete.id
                    }
                }
            }
        }
        
    }
}
