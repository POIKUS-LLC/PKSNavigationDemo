//
//  ProductDetail.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/19/24.
//

import SwiftUI
import PKSNavigation

enum ProductDetailSheets: Identifiable, Hashable, Equatable {
    case choosingModel
    case paymentSelection
    
    var id: Int {
        self.hashValue
    }
}
struct ProductDetail: View {
    @Environment(\.pksDismiss) var dismiss
    
    @State private var selectedSheet: ProductDetailSheets? = nil
    
    @State private var selectedModel = -1
    @State private var selectedColor = -1
    @State private var selectedStorage = -1
    @State private var selectedPaymentOption = -1
    @State private var selectedConnectivity = -1
    @State private var selectedAppleCare = -1

    let models = ["iPhone 16 Pro", "iPhone 16 Pro Max"]
    let colors = ["Desert Titanium", "Natural Titanium", "White Titanium", "Black Titanium"]
    let storageOptions = ["256GB", "512GB", "1TB"]
    let paymentOptions = ["Full Price", "Monthly Installments", "iPhone Upgrade Program"]
    let connectivityOptions = ["T-Mobile", "Replace on existing T-Mobile account", "Connect to any carrier later"]
    let appleCareOptions = ["AppleCare+", "AppleCare+ with Theft and Loss", "No AppleCare+ coverage"]

    var body: some View {
        Section {
            ScrollView {
                VStack {
                    dealsSection
                    mainTitleSection
                    modelSelectionSection
                    colorSelectionSection
                    storageSelectionSection
                    paymentOptionsSection
//                    connectivitySection
//                    appleCareSection
//                    checkoutSection
                }
                .background(Color(.systemGray6))
            }
        } header: {
            header
        }
        .sheet(item: $selectedSheet) { sheet in
            switch sheet {
            case .choosingModel:
                CompareModels()
            case .paymentSelection:
                PaymentHelp()
            }
        }
        .toolbar(.hidden)
        .padding(.top, 16)
    }
    
    @ViewBuilder
    var header: some View {
        VStack(alignment: .center, spacing: 0) {
            HStack {
                Button {
                    dismiss()
                } label: {
                    Label("Products", systemImage: "chevron.left")
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "square.and.arrow.up")
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                }
            }
            .padding(.horizontal, 8)
            .font(.title3)
            Divider()
                .padding(.vertical, 8)
            Text("From $999 or $41.62/mo. for 24 mo.*")
                .padding(.vertical, 8)
            
        }
        
    }
    
    var dealsSection: some View {
        VStack(alignment: .center, spacing: 12) {
            HStack(spacing: 18) {
                Image("ATT", bundle: .module)
                    .resizable()
                    .scaledToFit()
                Image("BOOST", bundle: .module)
                    .resizable()
                    .scaledToFit()
                Image("TMOBILE", bundle: .module)
                    .resizable()
                    .scaledToFit()
                Image("VERIZON", bundle: .module)
                    .resizable()
                    .scaledToFit()
                    
            }
            .frame(height: 30)
            Text("Get up to $1000 in credut on a new iPhone with AT&T, Boost Mobile, T-Mobile, or Verizon. Trade-in may be required.")
                .multilineTextAlignment(.center)
                .font(.callout)
            
            Button("See all deals") {
                
            }
        }
        .padding( 24)
    }

    var mainTitleSection: some View {
        VStack(alignment: .center) {
            Text("New")
                .font(.caption)
                .foregroundStyle(.yellow)
            Text("Buy iPhone 16 Pro")
                .font(.largeTitle)
            Text("From $999 or $41.62/mo. for 24 mo.")
                .font(.subheadline)
            Image("IPHONE16_PRO", bundle: .module)
                .resizable()
                .scaledToFit()
                .frame(height: 300)
            Button {
                
            } label: {
                Label("Chat with an iPhone Specialist", systemImage: "message.fill")
            }
            
            Divider()
                .padding(.vertical)
            Button {
                
            } label: {
                Text("Gallery")
                    .frame(maxWidth: .infinity, alignment: .center)
                
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical)
        .background(Color.white)
           
    
    }

    var modelSelectionSection: some View {
        VStack(alignment: .leading) {
            Text("**Model.** Which is best for you?")
                .font(.title2)
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("iPhone 16 Pro")
                            .font(.title3)
                        Text("6.3-inch display")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                    Text("From $999 or $41.62/mo. for 24 mo.")
                        .font(.callout)
                        .foregroundStyle(.secondary)
                        .frame(minWidth: 200, alignment: .leading)
                }
                HStack {
                    Image("APPLE_INTELLIGENCE", bundle: .module)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 32)
                        
                    Text("Apple Intelligence")
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 12))
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(selectedModel == 0 ? Color.blue : Color.secondary, lineWidth: 1)
            }
            .contentShape(Rectangle())
            .onTapGesture {
                selectedModel = 0
            }
            
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("iPhone 16 Pro Max")
                            .font(.title3)
                        Text("6.9-inch display")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    
                    Spacer()
                    Text("From $1199 or $49.95/mo. for 24 mo.")
                        .font(.callout)
                        .foregroundStyle(.secondary)
                        .frame(minWidth: 200, alignment: .leading)
                }
                HStack {
                    Image("APPLE_INTELLIGENCE", bundle: .module)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 32)
                        
                    Text("Apple Intelligence")
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 12))
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(selectedModel == 1 ? Color.blue : Color.secondary, lineWidth: 1)
            }
            .contentShape(Rectangle())
            .onTapGesture {
                selectedModel = 1
            }
            InfoCard(
                headline: "Need help choosing a model?",
                subheadline: "Explore the differences in screen size and battery life."
            ) {
                selectedSheet = .choosingModel
            }
        }
        .padding()
    }

    var colorSelectionSection: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("**Finish**. Pick your favorite.")
                .font(.title2)
            Grid {
                GridRow {
                    colorPicker(
                        Color(
                            red: 199/255,
                            green: 169/255,
                            blue: 147/255
                        ),
                        title: "Desert Titanium",
                        index: 0
                    )
                    colorPicker(
                        Color(
                            red: 199/255,
                            green: 192/255,
                            blue: 183/255
                        ),
                        title: "Natural Titanium",
                        index: 1
                    )
                }
                
                GridRow {
                    colorPicker(
                        Color(
                            red: 242/255,
                            green: 241/255,
                            blue: 237/255
                        ),
                        title: "White Titanium",
                        index: 2
                    )
                    colorPicker(
                        Color(
                            red: 73/255,
                            green: 73/255,
                            blue: 73/255
                        ),
                        title: "Black Titanium",
                        index: 3
                    )
                }
                
            }
        }
        .padding()
    }
    
    func colorPicker(_ color: Color, title: String, index: Int) -> some View {
        VStack {
            Circle()
                .fill(color)
                .frame(width: 24, height: 24, alignment: .center)
            Text(title)
                .font(.title3)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding()
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 12))
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(selectedColor == index ? Color.blue : Color.secondary, lineWidth: 1)
        }
        .contentShape(Rectangle())
        .onTapGesture {
            selectedColor = index
        }
    }

    var storageSelectionSection: some View {
        VStack(alignment: .leading) {
            Text("**Storage.** How much space do you need?")
                .font(.title2)
            storageCard("256GB", price: "From $1199 or $49.95/mo. for 24 mo.", index: 0)
            storageCard("512GB", price: "From $1399 or $58.29/mo. for 24 mo.", index: 1)
            storageCard("1TB", price: "From $1599 or $66.62/mo. for 24 mo.", index: 2)
        }
        .padding()
    }

    func storageCard(_ storage: String, price: String, index: Int = 0) -> some View {
        VStack(alignment: .leading) {
            HStack {
                Text(storage)
                    .font(.title3)
                Spacer()
                Text(price)
                    .font(.callout)
                    .foregroundStyle(.secondary)
                    .frame(minWidth: 200, alignment: .leading)
            }
        }
        .frame(maxWidth: .infinity, minHeight: 60, alignment: .leading)
        .padding()
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 12))
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(selectedStorage == index ? Color.blue : Color.secondary, lineWidth: 1)
        }
        .contentShape(Rectangle())
        .onTapGesture {
            selectedStorage = index
        }
    }
    
    
    var paymentOptionsSection: some View {
        VStack(alignment: .leading) {
            Text("**Payment options.** Select the one that works for you.")
                .font(.title2)

            paymentOptionCard("Buy", price: "$1599", description: "Pay with Apple pay or other payment methods.", index: 0)
            paymentOptionCard("Finance", price: "$66.62/mo. for 24 mo.\nFrom $16.64/mo. over 36 mo. with a select carries deal", description: "Pay over time at 0% APR.", index: 1)
            paymentOptionCard("Apple iPhone Upgrade Program", price: "$74.91/mo. for 24 mo.*", description: "Pay monthly at 0% APR with the option to upgrade to a new iPhone every year.", index: 2)
            
            InfoCard(
                headline: "Not sure which payment option to choose?",
                subheadline: "Compare all pricing and deals to find the option that's right for you"
            ) {
                selectedSheet = .paymentSelection
            }
        }
        .padding()
    }

    
    func paymentOptionCard(_ title: String, price: String, description: String, index: Int = 0) -> some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            Text(price)
                .font(.callout)
                .frame(minWidth: 200, alignment: .leading)
        
            Divider()
            Text(description)
                .font(.callout)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, minHeight: 60, alignment: .leading)
        .padding()
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 12))
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(selectedPaymentOption == index ? Color.blue : Color.secondary, lineWidth: 1)
        }
        .contentShape(Rectangle())
        .onTapGesture {
            selectedPaymentOption = index
        }
    }
    
//    var connectivitySection: some View {
//        VStack(alignment: .leading) {
//            Text("Connectivity. Choose a carrier.")
//                .font(.headline)
//            Picker("Connectivity", selection: $selectedConnectivity) {
//                ForEach(0..<connectivityOptions.count, id: \.self) { index in
//                    Text(connectivityOptions[index]).tag(index)
//                }
//            }
//            .pickerStyle(SegmentedPickerStyle())
//        }
//    }
//
//    var appleCareSection: some View {
//        VStack(alignment: .leading) {
//            Text("AppleCare+ coverage. Protect your new iPhone.")
//                .font(.headline)
//            Picker("AppleCare", selection: $selectedAppleCare) {
//                ForEach(0..<appleCareOptions.count, id: \.self) { index in
//                    Text(appleCareOptions[index]).tag(index)
//                }
//            }
//            .pickerStyle(SegmentedPickerStyle())
//        }
//    }
//
//    var checkoutSection: some View {
//        VStack {
//            Text("iPhone Configuration Summary")
//                .font(.headline)
//            // Add configuration details here
//            
//            HStack {
//                Button("Save for Later") {
//                    // Action
//                }
//                .buttonStyle(.bordered)
//                
//                Button("Add to Bag") {
//                    // Action
//                }
//                .buttonStyle(.borderedProminent)
//            }
//        }
//    }
}

#Preview {
    ProductDetail()
}
