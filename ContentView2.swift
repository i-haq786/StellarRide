import SwiftUI

struct CarouselView2: View {
    let items: [String]
    @State private var currentIndex = 0
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    Spacer() // Add spacer before the first item
                    
                    ForEach(items.indices, id: \.self) { index in
                        let item = items[index]
                        let isActive = index == currentIndex
                        
                        ZStack {
                            Image(item)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 300, height: 450)
                                .cornerRadius(10)
                                .onTapGesture {
                                 currentIndex = index
                                 print("Active image: \(items[currentIndex])")
                                                                }
                                .offset(y: isActive ? 0 : 30) // Adjust vertical offset for non-active images
                        }
                        .contentShape(Rectangle()) // Set contentShape for touch detection
                    }
                    
                    Spacer() // Add spacer after the last item
                }
            }
        }
        .padding(.horizontal, -20)
    }
}

struct ContentView2: View {
    let carouselItems = ["image1", "image2", "image3", "image4", "image5"]
    
    var body: some View {
        VStack {
            CarouselView2(items: carouselItems)
            Spacer()
        }
        .padding(20)
        .background(.white)
       // .background(Color("bgcolor"))
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}

