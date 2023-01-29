//
//  BindingExample.swift
//  Swift UI Examples
//
//  Created by Kumar on 26/01/23.
//

import SwiftUI

struct BindingExample: View {
   
    @State private var count: Int = 0
    var body: some View {
      
            VStack() {
            
                Spacer()
                
                Text("@Binding refers to value type data owned by a different view. Changing the binding locally changes the remote data too. This does not own its data.").padding(.all, 10)

                Link("More info.", destination: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui/what-is-the-binding-property-wrapper")!)
                    .foregroundColor(.yellow)
                
                Spacer()
                Divider()
                
        
                
                Button("Click me \(count)")
                {
                    count = count + 1
                }
                Divider()
                Spacer()
                BindingButton(count: $count)
               
                Spacer()
                
                
            }
        }
    }


struct BindingExample_Previews: PreviewProvider {
    static var previews: some View {
        BindingExample()
    }
}
