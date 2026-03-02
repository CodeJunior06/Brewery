//
//  BreweryListView.swift
//  Brewery
//
//  Created by Santiago Rueda on 2/03/26.
//

import SwiftUI

struct BreweryListView: View {
    let breweries: [Brewery]

       var body: some View {
           NavigationStack {
               ScrollView {
                   LazyVStack(spacing: 16) {
                       ForEach(breweries) { brewery in
                           NavigationLink {
                              // BreweryDetailView(brewery: brewery)
                           } label: {
                               BreweryCard(brewery: brewery)
                           }
                           .buttonStyle(.plain)
                       }
                   }
                   .padding()
               }
               .navigationTitle("Breweries 🍺")
           }
       }
}

private struct BreweryCard: View {
    let brewery: Brewery

       var body: some View {
           VStack(alignment: .leading, spacing: 8) {

               Text(brewery.name)
                   .font(.headline)

               Text(brewery.breweryType.capitalized)
                   .font(.subheadline)
                   .foregroundStyle(.secondary)

               HStack(spacing: 6) {
                   Image(systemName: "location.fill")
                       .font(.caption)

                   Text("\(brewery.city), \(brewery.state)")
                       .font(.caption)
               }
               .foregroundStyle(.secondary)
           }
           .padding()
           .background(
               RoundedRectangle(cornerRadius: 16)
                   .fill(Color(.systemBackground))
                   .shadow(radius: 4)
           )
       }
    
}

#Preview {
    BreweryListView(
            breweries: [
                Brewery(
                    id: "1",
                    name: "127 Brewing",
                    breweryType: "micro",
                    address1: "3090 Shirley Dr",
                    city: "Jackson",
                    state: "Michigan",
                    postalCode: "49201-7010",
                    country: "United States",
                    phone: "5172581346"
                ),
                Brewery(
                    id: "2",
                    name: "12Degree Brewing",
                    breweryType: "brewpub",
                    address1: "820 Main St",
                    city: "Louisville",
                    state: "Colorado",
                    postalCode: "80027-1865",
                    country: "United States",
                    phone: "3035791004"
                )
            ]
        )
}
