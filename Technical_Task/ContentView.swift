//
//  ContentView.swift
//  Technical_Task
//
//  Created by Abdulmajit Kubatbekov on 05.03.23.
//

import SwiftUI


struct ContentView: View {
    @State private var searchText = ""
    @State private var selectedTab = 0
    @State var selection: Int? = nil

    @State private var selectedTabIndex = 0
    
    
    let tabItems = [
        BottomNavigationItem(title: "", icon: "house"),
        BottomNavigationItem(title: "", icon: "creditcard"),
        BottomNavigationItem(title: "", icon: "ellipsis.message"),
        BottomNavigationItem(title: "", icon: "person")
    ]
    
    let images: [String] = ["Delivery", "take2", "bell", "car", "t"]

    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(images, id: \.self) { item in
                            Button(action: {
                            }, label: {
                                if item == "Delivery"{
                                    Text(item)
                                        .padding()

                                        .frame(width: 85, height: 47)
                                        .foregroundColor(.white)
                                        .scaledToFit()
                                        .font(.system(size: 10))
                                        .background(Color.black)
                                        .cornerRadius(10)
                                        
                                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 5)
                            }else{
                                Image(item)
                                    .padding()
                                    .frame(width: 50, height: 47)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .aspectRatio(1, contentMode: .fit)
                                    .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 5)
                            }
                                })
                        }
                    }
                    .padding()
                }
                Text("56 stores open")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 17)
                    .font(.system(size: 16, weight: .bold, design: .default))
                HStack (){
                    HStack(){
                        Spacer()
                        Image(systemName: "magnifyingglass")
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.secondary)

                        TextField("Find restaurant by name ", text: $searchText)
                            .frame(width: 277, height: 55)
                            .font(.system(size: 12))

                            .cornerRadius(15)
                    }
                    .background(Color.white)
                    .cornerRadius(15)

                    Spacer()

                    Image(systemName: "slider.horizontal.3")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 5)
                }
                .padding(.horizontal)
                .padding(.top)
                .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 5)

                Spacer(minLength: 15)

                
                HStack{
                    VStack {
                        TabView {
                            Image("tony")
                                .frame(width: 150, height: 150)
                        }
                        .tabViewStyle(PageTabViewStyle())
                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                        
                        Text("Tony Roma’s")
                            .bold(true)
                        Text("French Pasta \n"
                              + "Delivery: FREE • Minimum: $20")
                            .font(.system(size: 10))
                            .foregroundColor(.secondary)
                        HStack(spacing: 1){
                            Image(systemName: "star.fill")
                                    .foregroundColor(.black)
                                Text("4.5")
                                .font(.system(size: 12))
                            Text("·")
                                .font(.system(size: 12))
                            Image(systemName: "clock")
                                    .foregroundColor(.black)
                                Text("35 Mins")
                                .font(.system(size: 12))
                        }
                    }
                    .background(Color.white)
                    .cornerRadius(30)
                    .frame(width: 160, height: 220)

                    VStack {
                        TabView {
                            Image("momos")
                                .frame(width: 150, height: 150)
                        }
                        .tabViewStyle(PageTabViewStyle())
                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))

                        Text("Momos")
                            .bold(true)

                        Text("Japanese \n"
                              + "Delivery: FREE • Minimum: $10")
                            .font(.system(size: 10))
                            .foregroundColor(.secondary)
                        HStack(spacing: 1){
                            Image(systemName: "star.fill")
                                    .foregroundColor(.black)
                                Text("4.5")
                                .font(.system(size: 12))

                            Text("·")
                                .font(.system(size: 12))

                            Image(systemName: "clock")
                                    .foregroundColor(.black)
                                Text("30 Mins")
                                .font(.system(size: 12))
                        }
                    }
                    .background(Color.white)
                    .cornerRadius(30)
                    .frame(width: 160, height: 220)
                }
                
                List {
                    HStack{
                            VStack{
                                Text("Paul")
                                    .font(.system(size: 16))
                                    .bold(true)
                                    .padding(.leading, 0)
                                Text("French Pasta \n"
                                      + "Delivery: FREE • Minimum: $0")
                                    .font(.system(size: 10))
                                    .foregroundColor(.secondary)
                                HStack(spacing: 1){
                                    Image(systemName: "star.fill")
                                            .foregroundColor(.black)
                                        Text("4.5")
                                        .font(.system(size: 12))

                                    Text("·")
                                        .font(.system(size: 12))

                                    Image(systemName: "clock")
                                            .foregroundColor(.black)
                                        Text("25 Mins")
                                        .font(.system(size: 12))
                                }
                            }
                            Image("paul")
                                .scaledToFit()
                                .frame(width: 120,height: 120)
                                .offset(x: 45)
                        }
                        .frame(width: 285, height: 130)
                        
                }
                Spacer()

                VStack(spacing: 0) {
                    BottomNavigationView(selectedTabIndex: $selectedTabIndex, items: tabItems)
                        .cornerRadius(30)
                        .frame(width: 335, height: 75)
                        .shadow(color: Color.black.opacity(1.2), radius: 5, x: 0, y: 0)
                }
                   .toolbar {
                       ToolbarItem(placement: .principal) { // <3>
                           VStack(spacing: -5){
                               Text("Delivering to")
                                   .foregroundColor(.secondary)
                                   .font(.system(size: 12))
                               Button("Manas Ave ⇩"){
                                   
                               }
                               .font(.headline)
                               .foregroundColor(.black)
                               .font(.system(size: 12))
                           }
                               }
                       ToolbarItem(placement: .navigationBarLeading) {
                           Button(action: {
                               print("line.3.horizontal")
                           }) {
                               Image(systemName: "line.3.horizontal")
                                               .foregroundColor(.black)
                           }
                                           }
                       ToolbarItem(placement: .navigationBarTrailing) {
                           Button(action: {
                               print("User icon pressed...")
                           }) {
                               Image(systemName: "cart")
                                                .font(.system(size: 15))
                                               .frame(width: 50, height: 47)
                                               .foregroundColor(.white)
                                               .background(Color.black)
                                               .cornerRadius(10)
                           }
                           Spacer()
                       }
                   }
            }
            .background(Color(red: 0.898, green: 0.898, blue: 0.898).opacity(1))

        }

    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

    
    struct BottomNavigationView: View {
        @Binding var selectedTabIndex: Int
        let items: [BottomNavigationItem]
        
        var body: some View {
            HStack(spacing: 0) {
                ForEach(0..<items.count) { index in
                    BottomNavigationItemView(
                        item: items[index],
                        isSelected: index == selectedTabIndex,
                        index: index,
                        onTapGesture: {
                            selectedTabIndex = index
                        }
                    )
                    if index != items.count - 1 {
                        Spacer()
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .background(Color.black)

        }

    }
    
    struct BottomNavigationItemView: View {
        let item: BottomNavigationItem
        let isSelected: Bool
        let index: Int
        let onTapGesture: () -> Void
        
        var body: some View {
            Button(action: onTapGesture) {
                VStack(spacing: 5) {
                    Image(systemName: item.icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(isSelected ? .blue : .gray)
                    Text(item.title)
                        .font(.caption)
                        .foregroundColor(isSelected ? .blue : .gray)
                }
                .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity)
            .background(Color.clear)
        }
    }
    
    struct BottomNavigationItem {
        let title: String
        let icon: String
    }
    
}
