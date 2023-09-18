//
//  Page3.swift
//  3 challenge 8
//
//  Created by Khayra Anandini Handoko on 31/8/23.
//

import SwiftUI

struct Page3: View {
    
    @Binding var people: [candidate]
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(people) { person in
                    HStack{
                        Text("\(person.name)")
                        Spacer()
                        Text("\(person.votes)")
                            .bold()
                    }
                }
            }
            .background(.white.gradient)
            .scrollContentBackground(.hidden)
            .navigationTitle("Votes")
        }
    }
}

//struct Page3_Previews: PreviewProvider {
  //  static var previews: some View {
    //    Page3(people: self.$people )
    //}
//}
