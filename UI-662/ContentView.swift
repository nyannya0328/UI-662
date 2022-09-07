//
//  ContentView.swift
//  UI-662
//
//  Created by nyannyan0328 on 2022/09/07.
//

import SwiftUI

struct ContentView: View {
   
    @AppStorage("Change Icon") var changeIcon : String = "AppIcon"
    var body: some View {
        NavigationStack{
            
            
            
            Picker(selection: $changeIcon) {
                
                let iconImage : [String] = ["AppIcon","AppIcon 1","AppIcon 2"]
                
                ForEach(iconImage ,id:\.self){icon in
                    
                    Text(icon)
                }
                
            } label: {
                
                
            }
            .navigationTitle("Icon Chage")

            
        }
        .onChange(of: changeIcon) { newValue in
            
            UIApplication.shared.setAlternateIconName(newValue)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
