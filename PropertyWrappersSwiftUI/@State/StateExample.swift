//
//  StateExample1.swift
//  Swift UI Examples
//
//  Created by Kumar on 26/01/23.
//

// inSwift UI every thing is a view and view is a struct which is value type,
//you can not modify the property of an struct , to modify the count , you have to define it with @State
//count = count + 1  // Cannot assign to property: 'self' is immutable


import SwiftUI

struct StateExample: View {
    @State private var count : Int = 0
    var body: some View {
        VStack{
        
            Spacer()
            
            Text("@State lets us manipulate small amounts of value type data locally to a view. This owns its data.")
                .padding(.all, 10)

            Link("More info.", destination: URL(string: "https://www.hackingwithswift.com/quick-start/swiftui/what-is-the-state-property-wrapper")!)
                .foregroundColor(.yellow)
            
            Spacer()
            Divider()
            
            Button("Click me \(count)")
            {
                count = count + 1
            }
            Spacer()
            
        }
    }

}

struct StateExample_Previews: PreviewProvider {
    static var previews: some View {
        StateExample()
    }
}
