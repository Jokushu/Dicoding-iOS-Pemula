import SwiftUI
import SDWebImageSwiftUI

struct RestaurantDetail: View {
  var restaurant: Restaurant
    
  var body: some View {
    List {
      Section(content: {
        HStack {
          Spacer()
          WebImage(url: URL(string: "https://restaurant-api.dicoding.dev/images/small/\(restaurant.pictureId)"))
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 150, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 52.0), style: FillStyle())
          Spacer()
        }
      })
            
      Section(header: Text("Info"), content: {
        RestaurantInfoRow(icon: "map", title: "City", value: restaurant.city)
        RestaurantInfoRow(icon: "star.fill", title: "Rating", value: String(restaurant.rating))
      })
          
      Section(header: Text("Description")) {
        Text(restaurant.description)
      }
    }
    .listStyle(GroupedListStyle())
    .navigationTitle(restaurant.name)
  }
}


struct RestaurantInfoRow: View {
    
  var icon: String
  var title: String
  var value: String
    
  var body: some View {
    HStack{
      Image(systemName: icon)
        .foregroundColor(.accentColor)
      Text(title)
        .font(.body)
        .foregroundColor(.accentColor)
      Spacer()
      Text(value)
    }
  }
}

struct CharacterDetail_Previews: PreviewProvider {
  static var previews: some View {
    RestaurantDetail(restaurant: restaurants[0])
  }
}
