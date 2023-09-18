//
//  NewCandidate.swift
//  3 challenge 8
//
//  Created by Khayra Anandini Handoko on 31/8/23.
//

import SwiftUI

struct NewCandidate: View {
    
    @Binding var name: String
    @Binding var desc: String
    
    @Binding var sheetIsShown: Bool
    @Binding var candidates: [candidate]
    
    
    var body: some View {
        VStack{
            List{
                TextField("Enter name", text: $name)
                TextField("Enter desc", text: $desc)
                Button("Submit"){
                    candidates.append(candidate(name: self.name, desc: self.desc, votes: 0, val: 0.0))
                    
                    self.sheetIsShown = false;
                    self.name = "";
                    self.desc = "";
                }
            }
        }
    }
    
    //struct NewCandidate_Previews: PreviewProvider {
    //static var previews: some View {
    //NewCandidate()
    //}
    //}
}
