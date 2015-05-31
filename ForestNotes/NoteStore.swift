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
        return notes.count
    }
    
    // MARK: saving and loading files
    private func archiveFilePath() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
        let documentsDirectory = paths.first as! String
        let path = documentsDirectory.stringByAppendingPathComponent("NotesStore.plist")
        return path;
    }
    
    func save() {
        NSKeyedArchiver.archiveRootObject(notes, toFile: archiveFilePath())
    }
        
    private func load() {
        let filePath = archiveFilePath()
        let fileManager = NSFileManager.defaultManager()
        
        if fileManager.fileExistsAtPath(filePath) {
            notes = NSKeyedUnarchiver.unarchiveObjectWithFile(filePath) as! [Note]
        } else {
            notes = [Note]()
            
            // some default stuff so user do not feel like they are in a empty room
            var note1 = Note()
            note1.title = "Note1"
            note1.text = "This is a note"
            notes.append(note1)
            
            var note2 = Note(title: "note2", text: "This is note 2")
            notes.append(note2)
            
            notes.append(Note(title: "Note3", text: "This is note 3"))

        }
    }
    
}
