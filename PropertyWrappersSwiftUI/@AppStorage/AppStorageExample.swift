//
//  AppStorageExample.swift
//  PropertyWrappersSwiftUI
//
//  Created by Kumar on 27/01/23.
//

import SwiftUI

enum SettingKeys {
    static let showNotifications = "showNotifications"
    static let dailyVideoLimit = "dailyVideoLimit"
}

struct AppStorageExample: View {
   
    @AppStorage(SettingKeys.showNotifications , store: UserDefaults(suiteName: "AppStorageExample")) var showNotifications : Bool = false
    
    @AppStorage(SettingKeys.dailyVideoLimit, store: UserDefaults(suiteName: "AppStorageExample")) var dailyVideoLimit : Int = 1
    
//    @AppStorage(SettingKeys.dailyVideoLimit, store: .standard) var dailyVideoLimit : Int = 1
//
    var body: some View {
    
        Form{
            
            Section {
                Toggle(isOn: $showNotifications) {
                    Text("Show Notifications")
                }
                
                Section {
                    HStack{
                        Stepper("What's your age?", value: $dailyVideoLimit , in: 1...10)
                       
                        Text ("\(dailyVideoLimit)")
                        }
                    }
                }
            }
        }
        
    }

struct AppStorageExample_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageExample()
    }
}
