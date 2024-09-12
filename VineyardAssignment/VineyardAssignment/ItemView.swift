//
//  ItemView.swift
//  VineyardAssignment
//
//  Created by Tony Nguyen on 9/8/24.
//

import Foundation
import SwiftUI

struct ItemView: View {
    @Environment(ViewModel.self) private var viewModel
    @State var list: ItemList
    @State var showingAlert: Bool = false
    @State var itemName: String = ""
    var body: some View {
        List($list.itemList) { $item in
                HStack {
                    Button(action: { item.isChecked?.toggle()
                        
                    }) {
                        Image(systemName: item.isChecked ?? false ? "checkmark.circle" : "circle")
                    }
                    Text(item.name)
                }
            }
        .navigationTitle(list.name)
            .toolbar {
                Button(action: {
                    showingAlert = true
                }) {
                    Image(systemName: "plus")
                }
            }
            .alert("New Item", isPresented: $showingAlert) {
                TextField("Add here", text: $itemName)
                HStack {
                    Button(action: {
                        viewModel.addItem(to: list, name: itemName)
                        itemName = ""

                    }) {
                        Text("Done")
                    }
                    Button("Cancel", role: .cancel) { 
                        itemName = ""
                    }
                }

            }
        }
}
