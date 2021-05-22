//
//  InsetFactsView.swift
//  Africa
//
//  Created by Максим on 18.05.2021.
//

import SwiftUI

struct InsetFactsView: View {
    //MARK: - Properties
    
    var animal: Animal
    
    //MARK: - Body
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self ) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
        
    }
}

//MARK: - Preview
struct InsetFactsView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactsView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
