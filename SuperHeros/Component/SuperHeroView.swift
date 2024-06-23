//
//  SuperHeroView.swift
//  SuperHeros
//
//  Created by Ahmed Rady on 13/06/2024.
//

import SwiftUI

struct SuperHeroView: View {
    var SuperH : Super
    @State var alert : Bool = false
    @State var isscaled : Bool = false //for animation
    @State var isslaiding : Bool = false //for animation
    var hapticImbact = UIImpactFeedbackGenerator(style: .heavy) //for vibration
    var body: some View {
        ZStack {
            Image(SuperH.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isscaled ? 1.3 : 0.2) 
                .animation(.easeOut(duration: 2), value: isscaled)
                .frame(height: 900)
                .onAppear{
                    isscaled.toggle()
                } //for animation
                
            
            VStack{
                Text(SuperH.name)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                
                Button {
                    Playsound(sound: "chimeup", type: "mp3") //for sound
                    hapticImbact.impactOccurred() //for vibration
                    alert .toggle()
                }label: {
                    HStack{
                        Text("See Detailes")
                        Image(systemName: "arrow.right.circle")
                        
                    }.padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(colors: SuperH.grideant,startPoint: .topLeading, endPoint: .bottomTrailing))
                        .clipShape(Capsule())
                        .shadow(color: .white , radius: 10)
                        .alert(isPresented: $alert){
                            Alert(title:  Text("\(SuperH.name)"),message: Text(SuperH.message),dismissButton:.default(Text("OK")) )
                        }
                }
                
            }//vstack
            .offset(x:-10,y : isslaiding ? 325 : 500)
            .animation(.easeOut(duration: 2), value: isslaiding)
            .onAppear{
                isslaiding = true
            } //for animation
            
        }// zstack
        .background(LinearGradient(colors: SuperH.grideant,startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(30)
        .shadow(color:.black,radius: 20)
        
        
        
        
    }
}

struct SuperHeroView_Previews: PreviewProvider {
    static var previews: some View {
        SuperHeroView(SuperH: SuperHeroData[0])
    }
}
