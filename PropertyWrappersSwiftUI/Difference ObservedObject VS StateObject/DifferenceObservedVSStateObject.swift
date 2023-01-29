//
//  DifferenceObservedVSStateObject.swift
//  PropertyWrappersSwiftUI
//
//  Created by Kumar on 27/01/23.
//

import SwiftUI

struct DifferenceObservedVSStateObject: View {
    @State var title : String = "Difference ObservedObject VS StateObject"

    var body: some View {
        Spacer()
        ObjectCounterView()
        Spacer()
        Divider()
        StateCounterView()
        Spacer()
        Divider()
        VStack {
            Text("\(title)")
            Button("Change title") {
                title = UUID().uuidString
            }
        }.padding(.bottom)
        Divider()
        Spacer()
    }
}


struct ObjectCounterView: View {
    @ObservedObject var viewModel = CounterViewModel(count: 0, viewType: "ObservedObject")

    var body: some View {
        VStack {
          
            Text("---ObservedObject---")
       Text("Count is: \(viewModel.count)")
            Button("Increment Counter") {
                viewModel.incrementCounter()
            }
        }
    }
}



struct StateCounterView: View {
    @StateObject var viewModel = CounterViewModel(count: 0, viewType: "StateObject")

    var body: some View {
        VStack {
            Text("---StateObject---")

            Text("Count is: \(viewModel.count)")
            Button(" Increment Counter") {
                viewModel.incrementCounter()
            }
        }
    }
}


final class CounterViewModel: ObservableObject {
    @Published var count : Int
    var viewType : String

    func incrementCounter() {
        count += 1
    }
    init(count: Int,viewType:String) {
        self.count = count
        self.viewType = viewType
        print("--init viewModel viewType \(viewType) ")

    }
    deinit{
        print("deinit viewModel viewType \(viewType) ")
    }
}




struct DifferenceObservedVSStateObject_Previews: PreviewProvider {
    static var previews: some View {
        DifferenceObservedVSStateObject()
    }
}
