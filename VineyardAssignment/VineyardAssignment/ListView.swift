//
//  ListView.swift
//  VineyardAssignment
//
//  Created by Tony Nguyen on 9/10/24.
//

import Foundation
import SwiftUI
struct ListView: View {
    @Environment(ViewModel.self) private var viewModel
    @State var showingAlert: Bool = false
    @State var listName: String = ""
    var body: some View {
            List(viewModel.lists) { list in
                VStack {
                    NavigationLink(list.name, destination: ItemView(list: list))
                }
            }
            .navigationTitle("Lists")
            .toolbar {
                Button(action: {
                    showingAlert = true
                }) {
                    Image(systemName: "plus")
                }
            }
            .alert("New List", isPresented: $showingAlert) {
                TextField("Add here", text: $listName)
                HStack {
                    Button(action: {
                        viewModel.createList(name: listName)
                        listName = ""
                    }) {
                        Text("Done")
                    }
                    Button("Cancel", role: .cancel) {
                        listName = ""
                    }
                }

            }

        }
    }

