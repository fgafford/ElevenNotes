//
//  NoteStore.swift
//  ForestNotes
//
//  Copyright (c) 2015 Forest Gafford. All rights reserved.
//

import UIKit

// singleton class.....
private let NoteStoreInstance = NoteStore()

class NoteStore: NSObject {
    private var notes : [Note]!
    
    // this class var allows us to get a handel to this classs
    class var sharedInstnace : NoteStore {
        return NoteStoreInstance
    }
    
    override init(){
        notes = [Note]()
    }
    
    func getNote(index : Int) -> Note {
        // should really check for index out of bounds here
        return notes[index]
    }
    
    func addNote(note: Note) {
        notes.append(note)
    }
    
    func updateNote(note: Note, index : Int) {
        notes[index] = note
    }
    
    func deleteNote(index : Int) {
        notes.removeAtIndex(index)
    }
    
    func getCount() -> Int {
        reaturn notes.count
    }
    
}
