//
//  NewDesc.swift
//  3 challenge 8
//
//  Created by Khayra Anandini Handoko on 31/8/23.
//

import SwiftUI

struct NewDesc: View {
    @Binding var people: [candidate]
    var body: some View {
        ForEach(people) { person in
            /*@START_MENU_TOKEN@*/Text(person.name)/*@END_MENU_TOKEN@*/
            Text(person.desc)
        }
    }
}

//struct NewDesc_Previews: PreviewProvider {
    //static var previews: some View {
      //  NewDesc()
  //  }
//}
