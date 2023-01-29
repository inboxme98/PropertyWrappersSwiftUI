//
//  StateObjectExample.swift
//  PropertyWrappersSwiftUI
//
//  Created by Kumar on 27/01/23.
//

import SwiftUI

struct StateObjectExample: View {
    @StateObject var viewModel : StateObjectViewModel = StateObjectViewModel()

    var body: some View {
         VStack(){
             
             Divider()
             
             Button("Click")
             {
                 viewModel.title = UUID().uuidString
             }
             Divider()
             Text(viewModel.title).foregroundColor(.red)

             
         }
         
     }
 }

 class StateObjectViewModel : ObservableObject
 {
     @Published var title : String
     
     
     init(title: String = "Hello") {
         self.title = title
         print("init StateObjectViewModel")

     }
     
  
 }

struct StateObjectExample_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectExample()
    }
}
