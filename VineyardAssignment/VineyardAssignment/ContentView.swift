//
//  ContentView.swift
//  VineyardAssignment
//
//  Created by Sankaet Cheemalamarri on 9/5/24.
//

import SwiftUI



struct ContentView: View {
    @Environment(ViewModel.self) private var viewModel
    @State var showingAlert: Bool = false
    @State var listName: String = ""
    @State var loggedin = false
    @State var usernameAndPassword: [String: String] = [:]
    var body: some View {
        
        NavigationStack() {
            if loggedin {
                ListView()
            } else {
                LoginView(isAuthenticated: $loggedin)
            }

        }
    }
}

#Preview {
    ContentView()
}
