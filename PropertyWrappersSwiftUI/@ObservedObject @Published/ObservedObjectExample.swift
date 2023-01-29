//
//  ObservedObjectExample.swift
//  PropertyWrappersSwiftUI
//
//  Created by Kumar on 27/01/23.
//

import SwiftUI

struct ObservedObjectExample: View {
   @ObservedObject var viewModel : ObservedObjectViewModel = ObservedObjectViewModel()

    
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

class ObservedObjectViewModel : ObservableObject
{
    @Published var title : String
    
    
    init(title: String = "Hello") {
        self.title = title
    }
    
 
}

struct ObservedObjectExample_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectExample()
    }
}
