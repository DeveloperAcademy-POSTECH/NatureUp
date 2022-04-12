//
//  activityViewModel.swift
//  NatureUp
//
//  Created by Wonhyuk Choi on 2022/04/13.
//

import Foundation
import Firebase

class ActivityViewModel: ObservableObject {
    
    @Published var list = [Activity]()
    
    //MARK: - Create
    
    func addData(name: String, type: String, level: Int) {
        
        let db = Firestore.firestore()
        
        db.collection("activities").addDocument(data: ["name":name, "type":type, "level": level]) { error in
            
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
        db.collection("activities").getDocuments { snapshot, error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                if let snapshot = snapshot {
                    
                    // Update the list property in the main thread
                    DispatchQueue.main.async {
                        
                        // Get all the documents and create Todos
                        self.list = snapshot.documents.map { d in
                            
                            // Create a Todo item for each document returned
                            return Activity(
                                id: d.documentID,
                                name: d["name"] as? String ?? "",
                                type: d["type"] as? String ?? "",
                                level: d["level"] as? Int ?? 0
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
    
    func getQueryData(type: String) {
        
        // Get a reference to the database
        let db = Firestore.firestore()
        
        // Read the documents at a specific path
        db.collection("activities").whereField("type", isEqualTo: type).getDocuments { snapshot, error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                if let snapshot = snapshot {
                    
                    // Update the list property in the main thread
                    DispatchQueue.main.async {
                        
                        // Get all the documents and create Todos
                        self.list = snapshot.documents.map { d in
                            
                            // Create a Todo item for each document returned
                            return Activity(
                                id: d.documentID,
                                name: d["name"] as? String ?? "",
                                type: d["type"] as? String ?? "",
                                level: d["level"] as? Int ?? 0
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
    
    //MARK: - Update
    
    func updateData(activityToUpdate: Activity, field: Any) {
        
        let db = Firestore.firestore()
        
        // Set the data to update
        db.collection("activities").document(activityToUpdate.id).setData(["\(field)": field], merge: true) { error in
            
            // Check for errors
            if error == nil {
                // Get the new data
                self.getAllData()
            }
        }
    }
    
    //MARK: - Delete
    
    func deleteData(activityToDelete: Activity) {
        
        // Get a reference to the database
        let db = Firestore.firestore()
        
        // Specify the document to delete
        db.collection("activities").document(activityToDelete.id).delete { error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                // Update the UI from the main thread
                DispatchQueue.main.async {
                    
                    // Remove the todo that was just deleted
                    self.list.removeAll { activity in
                        
                        // Check for the todo to remove
                        return activity.id == activityToDelete.id
                    }
                }
                
                
            }
        }
        
    }
}
