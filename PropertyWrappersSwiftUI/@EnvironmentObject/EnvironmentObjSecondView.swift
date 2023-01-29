//
//  EnvironmentObjSecondView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Kumar on 27/01/23.
//

import SwiftUI

struct EnvironmentObjSecondView: View {
    var body: some View {
        NavigationLink{
            
            EnvironmentObjThirdView()
            
        } label: {
            
            Text("Go to Third View")
        }
    }
}

struct EnvironmentObjSecondView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjSecondView()
    }
}
