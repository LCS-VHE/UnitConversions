//
//  ContentView.swift
//  UnitConversions
//
//  Created by Vincent He on 2020-11-11.
//

import SwiftUI

func convert_cm_mm(cm : String) -> String {
    guard let cm = Double(cm) else{
        return "ERROR Invalid Input"
    }
    
    return String(Double(cm) * 100)
}
struct ContentView: View {
    @State private var input_cm:String = "0"
    

    var body: some View {
        NavigationView{
            Form{
                Section(header:Text("CM to MM")){
                    TextField("CM? ", text: $input_cm)
                    
                }
                
                Section(header: Text("Output")){
                    Text(convert_cm_mm(cm: input_cm))
                }
            }
            
            .navigationBarTitle("Unit Conversion")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
