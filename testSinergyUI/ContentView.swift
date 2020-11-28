//
//  ContentView.swift
//  testSinergyUI
//
//  Created by Nova Arisma on 11/24/20.
//  Copyright © 2020 Nova Arisma. All rights reserved.
// learn  in https://www.youtube.com/watch?v=AYQHRnYT9Jc

import SwiftUI

struct Box {
    var id: Int
    let tittle, deskription, imageUrl:  String
}

struct ContentView: View {
    
    let boxes: [Box] = [
    Box(id: 0, tittle: "Frozen", deskription: "In search of her sister, Elsa, Princess Anna, together with Kristoff and Snowman Olaf, embark on a dangerous journey through a fierce blizzard - so that her kingdom can escape the everlasting winter.", imageUrl: "frozen"),
    Box(id: 1, tittle: "The  Lego", deskription: "Vitruvius tries to save the super weapon 'Kragle' from the evil Lord Business, but fails. Later, a construction worker, Emmet Brickowski, found him but eventually passed out.", imageUrl: "lego"),
    Box(id: 2, tittle: "Black Widow", deskription: "Black Widow will tell about dark aspirations combined with Natasha's past as a Russian spy and assassin. In a state of being hunted, Natasha then revisited some of her colleagues who had been left behind before she joined SHIELD and The Mightiest Superheroes on Earth.", imageUrl: "blackwidow"),
    Box(id: 3, tittle: "Mulan", deskription: "When the Chinese emperor decreed that one man from each family was obliged to join the imperial army to defend the country against the Huns' attack, Hua Mulan, the eldest daughter of a respected warrior, decided to replace her ailing father.", imageUrl: "mulan"),
    Box(id: 4, tittle: "Abominable", deskription: "Yi (Chloe Bennet) never expected that he would meet Yeti on the roof of his apartment building in Shanghai. Together with his friends, Jin (Tenzing Norgay Trainor) and Peng (Albert Tsai), they named this young Yeti Everest. An exciting adventure begins when Yi and his friends try to return Everest to his family. However, their journey will not be easy because Burnish (Eddie Izzard), a rich man tries to catch Everest.", imageUrl: "abomin"),
    ]

    
    var body: some View {
        NavigationView{
            ScrollView(){
                HStack(){
                    ForEach(boxes, id: \.id){
                        box in
                        BoxView(box: box)}
                    }
                }.padding(20).navigationBarTitle(Text("Featured Movies"))
            }
        }
    }

struct BoxView: View {
    let box: Box
    
    var body: some View{
        VStack {
            Image(box.imageUrl)
                .resizable().frame(width: 243, height: 300)
            Text(box.tittle).font(.subheadline).fontWeight(.bold)
            Text(box.deskription).font(.system(size: 10))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
