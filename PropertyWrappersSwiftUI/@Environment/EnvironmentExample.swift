//
//  EnvironmentExample.swift
//  PropertyWrappersSwiftUI
//
//  Created by Kumar on 27/01/23.
//

import SwiftUI

struct EnvironmentExample: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme

    @Environment(\.calendar) private var calendar : Calendar
    
    var body: some View
    {
        
        VStack(spacing: 50) {
            
            Text(String(describing: calendar.monthSymbols))
            Text(String(describing: calendar.locale))
            
            
            Text(String(describing: calendar.timeZone))
                
            
            
            
        }.foregroundColor(colorScheme == .dark ? .yellow : .blue)
  }
    
}

struct EnvironmentExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentExample()
    }
}
