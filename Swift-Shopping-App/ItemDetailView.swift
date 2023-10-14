//
//  ItemDetailView.swift
//  Swift-Shopping-App
//
//  Created by Ali Cangül on 14.10.2023.
//

import SwiftUI

struct ItemDetailView: View {
    let image:String
    let title:String
    let price:String
    let description:String
    
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(height: 200)
                
            
            VStack(spacing:10){
                HStack{
                    Text(title)
                        .font(.title3)
                        .fontWeight(.bold)

                    Spacer()
                    ZStack{
                        Color(hex:"dbebf6")
                        Text(price)

                    }
                    .frame(width: 80,height: 22)
                    .cornerRadius(10)

                }
                HStack{
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Image(systemName: "star")
                        Text("(4.5)")
                    }
                    Spacer()
                    HStack{
                        Image(systemName: "minus.square")
                        Text("1")
                        Image(systemName: "plus.rectangle")
                    }
                }
                Text("Description")
                    .frame(maxWidth: .infinity,alignment: .leading)
                
                Text(description)
                HStack{
                    Text("Size")
                        .font(.title2)
                        .fontWeight(.medium)
                    Spacer()
                    Text("Color")
                        .font(.title2)
                        .fontWeight(.medium)
                        .padding(.trailing,20)
                    
                }
                HStack{
                    VStack{
                        Text("Height: 135 cm")
                            .frame(maxWidth: .infinity,alignment: .leading)
                        Text("Width: 200 cm")
                            .frame(maxWidth: .infinity,alignment: .leading)
                        Text("Diameter: 105 cm")
                            .frame(maxWidth: .infinity,alignment: .leading)

                    }
                    
                    Spacer()
                    Image(systemName: "circle.fill")
                        .foregroundColor(.blue)
                    Image(systemName: "circle.fill")
                    Image(systemName: "circle.fill")
                        .foregroundColor(.green)


                }
                

                
            }
            .padding()
        Spacer()
        }
        
        
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(image: "coach1", title: "Green Couch", price: "#350", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,"
        )
    }
}
