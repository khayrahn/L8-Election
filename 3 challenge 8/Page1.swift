//
//  Page1.swift
//  3 challenge 8
//
//  Created by Khayra Anandini Handoko on 31/8/23.
//

import SwiftUI

struct Page1: View {
    
    @State var sheetIsShown = false
    @State var nameInput: String = ""
    @State var descInput: String = ""
    @State var votesInput: Int = 0
    
    @Binding var people: [candidate]
    @State var num: Double = 0.0
    
    var body: some View {
        NavigationStack{
            ZStack{
                List{
                    ForEach(people) { person in
                        NavigationLink{
                            Image(systemName: "person.crop.circle.fill")
                                .foregroundStyle(.gray.gradient)
                                .font(.system(size:100))
                                .padding()
                            Text(person.name)
                                .font(.system(size:40))
                                .bold()
                            Text(person.desc)
                                .foregroundColor(.gray)
                            Slider(value: $num , in: 0.0...20.0, step: 2)
                                .padding()
                        }label:{
                            HStack{
                                Image(systemName: "person.fill")
                                    .foregroundStyle(.gray.gradient)
                                Text(person.name)
                            }
                        }
                    }.onDelete(perform: {
                        indexSet in people.remove(atOffsets: indexSet)
                    }
                    )
                }
                .background(.white.gradient)
                .scrollContentBackground(.hidden)
                .sheet(isPresented: $sheetIsShown) {
                    NewCandidate(name: self.$nameInput , desc: self.$descInput, sheetIsShown: self.$sheetIsShown, candidates: self.$people)
                }
                .navigationTitle("Candidates")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("+"){
                            //                        persons.append(Candidate(name: "", desc: "", votes: 0 ))
                            sheetIsShown = true
                        }
                    }
                }
            }
        }
    }
    
    //struct Page1_Previews: PreviewProvider {
    //static var previews: some View {
    //Page1(people: self.people)
    //}
    //}
}
