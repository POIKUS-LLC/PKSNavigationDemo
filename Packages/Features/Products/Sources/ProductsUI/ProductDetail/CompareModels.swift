//
//  CompareModels.swift
//  Products
//
//  Created by Ömer Hamid Kamışlı on 10/19/24.
//

import SwiftUI

struct CompareModels: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Section {
            ScrollView {
                VStack(spacing: 24) {
                    Text("Which model is right\nfor you?")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    Grid {
                        GridRow {
                            Image("IPHONE16_PRO", bundle: .module)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 100)
                            Image("IPHONE16_PRO", bundle: .module)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 140)
                        }
                        
                        GridRow(alignment: .top) {
                            Text("iPhone 16 Pro")
                        
                       
                            Text("iPhone 16\nPro Max")
                            
                        }
                        .multilineTextAlignment(.center)
                        .font(.headline)
                    }
                    
                    VStack(alignment: .leading, spacing: 16){
                        Text("iPhone 16 Pro and iPhone 16 Pro Max are designed for Apple Intelligence, the personal intelligence system that helps you write, express yourself, and get things done effortlessly. With groundbreaking privacy protections, it gives you peace of mind that no one else can access your data — not even Apple. Camera Control provides an easier way to quickly access camera tools. 4K 120 fps Dolby Vision and studio-quality mics deliver a big leap in Pro video capture. The A18 Pro chip enables Apple Intelligence and AAA gaming, which looks incredible on the larger Super Retina XDR displays. And both models have a USB-C connector with support for USB 3 speeds.*")
                        
                        Text("Here are the key differences:")
                            .fontWeight(.bold)
                        Text("iPhone 16 Pro has a 6.3-inch display' and gets up to 27 hours video playback")
                        Text("iPhone 16 Pro Max has a 6.9-inch display' and gets up to 33 hours video playback.")
                    }
                    .padding(.horizontal, 24)
                    
                    Color(.systemGray6)
                        .frame(height: 32)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Still have questions?")
                                .font(.headline)
                            Text("Connect with a Specialist for answers.")
                                .font(.subheadline)
                        }
                        Spacer()
                        HStack {
                            Button {
                                
                            } label: {
                                ZStack {
                                    Circle()
                                        .fill(Color(.systemGray6))
                                        .frame(width: 36, height: 36, alignment: .center)
                                    Image(systemName: "message.fill")
                                    
                                }
                            }

                            Button {
                                
                            } label: {
                                ZStack {
                                    Circle()
                                        .fill(Color(.systemGray6))
                                        .frame(width: 36, height: 36, alignment: .center)
                                    Image(systemName: "phone.fill")
                                    
                                }
                            }

                        }
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 24)
                }
            }
        } header: {
            VStack {
                HStack {
                    Button("Done") {
                        
                    }
                    .opacity(0)
                    .disabled(false)
                    
                    Spacer()
                    
                    Text("Compare Models")
                       
                    
                    Spacer()
                    
                    Button("Done") {
                        dismiss()
                    }
                }
                .font(.headline)
                .padding(.vertical, 16)
                .padding(.horizontal)
                
                Divider()
            }
            .background(.ultraThinMaterial)
        }
    }
}

#Preview {
    Color
        .red
        .sheet(isPresented: .constant(true)) {
            CompareModels()
        }
}
