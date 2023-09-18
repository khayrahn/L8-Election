//
//  Page2.swift
//  3 challenge 8
//
//  Created by Khayra Anandini Handoko on 31/8/23.
//

import SwiftUI

struct Page2: View {
    
    @State var selectedOption = ""
    @Binding var people: [candidate]
    
    var body: some View {
        NavigationStack{
            Text("Candidate voted for: ")
                .font(.system(size: 30))
            ZStack{
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(width: 100, height: 40)
                    .foregroundStyle(.blue)
                    .opacity(0.3)
                    .shadow(color: Color.blue.opacity(0.5), radius: 10, x: 0, y: 10)
                Picker("pick and option", selection: $selectedOption){
                    ForEach(people) { person in
                        Text(person.name)
                            .tag(person.name)
       
                    }

                }

            }
            .navigationTitle("Voting")
        }
    }
}

//struct Page2_Previews: PreviewProvider {
    //static var previews: some View {
       // Page2()
   // }
//}
