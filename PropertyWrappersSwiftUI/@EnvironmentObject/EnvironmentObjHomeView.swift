//
//  EnvironmentObjHomeView.swift
//  PropertyWrappersSwiftUI
//
//  Created by Kumar on 27/01/23.
//

import SwiftUI

struct EnvironmentObjHomeView: View {
    
    @StateObject var viewModel : EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        
        NavigationView{
            VStack(spacing: 50) {
                
                TextField("Enter Name", text: $viewModel.name)
                    .font(.title3)
                    .frame(width: 200, height: 50, alignment: .center)
                NavigationLink{
                    
                    EnvironmentObjSecondView()
                    
                } label: {
                    
                    Text("Go to Second View")
                }
            }
            
        }.environmentObject(viewModel)
            .navigationBarTitleDisplayMode(.inline)
        
    }
}

class EnvironmentViewModel : ObservableObject
{
    @Published var name: String = ""
    
}



struct EnvironmentObjHomeView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjHomeView()
    }
}
