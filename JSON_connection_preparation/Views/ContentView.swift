//
//  ContentView.swift
//  H4XDR News
//
//  Created by Arek on 15/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject  var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
//                NavigationLink(destination: DetailView(url: post.url))
//       {
                    HStack {
                        Text(String(post.BrandName!))
                        Text(String(post.MicroCategory!))
                    }
                }
            
            .navigationBarTitle("YNAP data")
          .onAppear {
    self.networkManager.fetchData()

        }
    }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


}

