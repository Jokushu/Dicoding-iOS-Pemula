import SwiftUI

struct RestaurantList: View {
  @State var showAboutView = false
  
  var body: some View {
    NavigationView {
      List(restaurants,id: \.id) { restaurant in
        NavigationLink(destination: RestaurantDetail(restaurant: restaurant)) {
          RestaurantRow(restaurant: restaurant)
        }
      }
      .navigationTitle("Restaurants")
      .toolbar {
        Button(action: {
          self.showAboutView.toggle()
        }) {
          Image(systemName: "person.circle.fill")
            .font(Font.system(.title))
        }
      }
    }
    .sheet(isPresented: $showAboutView) {
      AboutView(showAboutView: self.$showAboutView)
    }
  }
}

struct CharacterList_Previews: PreviewProvider {
  static var previews: some View {
    RestaurantList()
  }
}
