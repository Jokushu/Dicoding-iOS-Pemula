import SwiftUI

struct AboutView: View {
  @Binding var showAboutView: Bool
  
  var body: some View {
    NavigationView {
      VStack{
        UserView()
        StoryView()
      }
      .navigationBarTitle(Text("About me"), displayMode: .inline)
      .navigationBarItems(trailing: Button(action: {
        self.showAboutView = false
      }) {
        Text("Done").bold()
      })
    }
  }
}

struct UserView: View {
  
  var body: some View {
    VStack {
      Image("profpic")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .cornerRadius(10)
        .padding(40)
      Text("Vincent Gunawan")
        .font(.title)
      HStack{
        Image(systemName: "envelope.circle")
        Text("gnwnvincent@gmail.com")
      }
      HStack{
        Image(systemName: "graduationcap.circle")
        Text("Universitas Gadjah Mada")
      }
    }
  }
}

struct StoryView: View {
  
  var body: some View {
    ScrollView {
      Text("I am currently a back-end engineer consultant at Co-Learn and a junior computer science student at Universitas Gadjah Mada. I am interested in mobile and web programming. My values are ambition and responsibility. Ambitious to improve and evaluate myself, accept what is needed, and carry out tasks to the best of my ability to achieve my goal of doing things effectively and efficiently and bringing impact and benefit to the community. I usually solve logical problems, play games, or read the news when I have free time.")
        .font(.body)
        .multilineTextAlignment(.center)
        .padding()
    }
    .padding(.bottom, 50)
  }
}

struct AboutView_Previews: PreviewProvider {
  static var previews: some View {
    AboutView(showAboutView: .constant(true))
  }
}
