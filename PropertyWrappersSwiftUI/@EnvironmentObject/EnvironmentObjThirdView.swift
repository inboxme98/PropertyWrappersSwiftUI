//
//  EnvironmentObjThirdView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Kumar on 27/01/23.
//

import SwiftUI

struct EnvironmentObjThirdView: View {
    
    @EnvironmentObject var viewModel : EnvironmentViewModel
    
    var body: some View {
        
        
        Text("Third View!")
        
        Text("name - \(viewModel.name)")

        
        Button("Click")
        {
            
            viewModel.name = "Kumar"
        }
        
    }
}

struct EnvironmentObjThirdView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjThirdView()
    }
}
