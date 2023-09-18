//
//  ContentView.swift
//  3 challenge 8
//
//  Created by Khayra Anandini Handoko on 31/8/23.
//

import SwiftUI

struct candidate: Identifiable {
    var id = UUID()
    var name: String
    var desc: String
    var votes: Int
    var val: Double
}
//struct candidatevote {
 //   var candiudateid
 //   var totalvote
//}

struct ContentView: View {

    
    @State var people: [candidate] = [
        candidate(name: "mrbeat", desc: "hello", votes: 40, val: 0.0),
        candidate(name: "john", desc: "wow", votes: 0, val: 0.0)
    ]
   
    var body: some View {
        TabView{
            Page1(people: self.$people)
                .tabItem{
                    Image(systemName: "person.2.fill")
                    Text("Candidates")
                }
            Page2(people: self.$people)
                .tabItem{
                    Image(systemName: "archivebox.fill")
                    Text("Voting")
                }
            Page3(people: self.$people)
                .tabItem{
                    Image(systemName: "figure.stand.line.dotted.figure.stand")
                    Text("Votes")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
