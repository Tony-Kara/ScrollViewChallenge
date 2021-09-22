//
//  ContentView.swift
//  ScrollViewChallenge
//
//  Created by mac on 9/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
     
        ScrollView {
                    
                    LazyVStack(alignment: .leading) {
                        ForEach(0..<60){ index in
                            Rectangle()
                                    .fill(RadialGradient(
                                        gradient: Gradient(colors: [.orange, .red]),
                                        center: UnitPoint(x: 0.5, y: 0.5),
                                        startRadius: 0,
                                        endRadius: 200
                                    ))
                                     //The height value here is gradually increased overtime by increasing the CGFloat index and raising it to the power value inserted in the pow() method
                                    .frame(height: pow(1.1, CGFloat(index)))
                                    .cornerRadius(10)
                        
                        }
                     
                    }
                    .padding()
                }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
