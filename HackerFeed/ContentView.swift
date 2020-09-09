//
//  ContentView.swift
//  HackerFeed
//
//  Created by Ali on 09/09/2020.
//  Copyright © 2020 Ali Abidi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // this property is a listener, it is 'subscribed' to the updates from the NetworkManager
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in Text(post.title) }
                .navigationBarTitle("HackerFeed")
        }
        .onAppear {
            // like viewDidLoad, as soon as it appears the function in the closure is called
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
