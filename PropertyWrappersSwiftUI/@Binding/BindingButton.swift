//
//  BindingButton.swift
//  Swift UI Examples
//
//  Created by Kumar on 26/01/23.
//

import SwiftUI

struct BindingButton: View {
    @Binding var count : Int
    
    var body: some View {
       
        Button("Reset  (button in another view)")
        {
            count = 0
        }
        .foregroundColor(.red)
    }
}

struct BindingButton_Previews: PreviewProvider {
    static var previews: some View {
        BindingButton(count: .constant(0))
    }
}
