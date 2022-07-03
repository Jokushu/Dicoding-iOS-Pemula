import SwiftUI
import SDWebImageSwiftUI

struct RestaurantRow: View {
  var restaurant: Restaurant
  
  var body: some View {
    HStack {
      WebImage(url: URL(string: "https://restaurant-api.dicoding.dev/images/small/\(restaurant.pictureId)"))
        .resizable()
        .scaledToFit()
        .frame(width: 50, height: 50, alignment: .center)
        .clipShape(RoundedRectangle(cornerRadius: 20.0), style: FillStyle())
      VStack(alignment: .leading) {
        Text(restaurant.name)
          .font(.title3)
        Text(restaurant.city)
          .font(.footnote)
          .foregroundColor(.secondary)
      }
      Spacer()
    }
  }
}

struct CharacterRow_Previews: PreviewProvider {
  static var previews: some View {
    RestaurantRow(restaurant: restaurants[0])
  }
}
