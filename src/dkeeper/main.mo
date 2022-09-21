import List "mo:base/List";
import Debug "mo:base/Debug";

actor DKeeper {

//This is the datatype
  public type Note={
      title: Text;
      content: Text;

  };
//List will contain note objects
  stable var notes: List.List<Note> = List.nil<Note>();

  public func createNote(titleText: Text, contentText: Text){

    let newNote: Note ={
      title=titleText;
      content= contentText;

    }
        //pushing newNotes onto list that is called notes
    notes := List.push(newNote, notes);
    Debug.print(debug_show(notes));
  }
// read
  public query func readNotes(): async [Note] {
    return List.toArray(notes);
  }

  public func removeNote(id: Nat){
//take drop append
//name of list and natural number
let listFront = List.take(notes, id );
let listBack = List.drop(notes, id + 1);
notes := List.append(listFront, listBack);
Debug.print("idfasfejkjkkkklel");

  };





}
