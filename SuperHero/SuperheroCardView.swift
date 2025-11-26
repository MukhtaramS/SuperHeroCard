
import SwiftUI

struct SuperheroCardView: View {
    
    @State private var isVisible = false
    
    var body: some View {
        /**
         Select the components here or directly from the canvas
         and edit the properties from the inspector panel on the right
         */
        
        VStack {
            Text("Shodibek")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding(.top, 30.0)
                .shadow(color: .black.opacity(0.8), radius: 10, x: 0, y: 0)

            
          
            Image("Placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(40)
                .frame(width: 240, height: 240)
                .padding(.horizontal, 40)
                .scaleEffect(isVisible ? 1 : 0.6)
                .rotationEffect(isVisible ? .degrees(300) : .degrees(0))
                

            
            Text("You can call me yours")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding()
                .rotation3DEffect(
                    .degrees(isVisible ? 180 : 0),
                    axis: (x: 1, y: 0, z: 0)
                )
                
            Text("Powers:")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
            Text("Sleep, Scroll reels for hours, find problem")
                .foregroundStyle(.white)
                .padding(.horizontal)
                .offset(x: isVisible ? 10 : -10)

            
            Text("Weaknesses:")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Text("Blue eyes and falling in love quickly")
                .foregroundStyle(.white)
                .padding(.horizontal)
                .opacity(isVisible ? 1 : 0.2)
                .rotation3DEffect(
                    .degrees(isVisible ? 10 : -10),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                )
                .scaleEffect(isVisible ? 1.2 : 1)
            
            Text("Famous for:")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Text("At 32 look like 68")
                .foregroundStyle(.white)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
                        .cornerRadius(40)
                )
            
                
            HStack{
                Image(systemName:"Image")
                Image(systemName:"camera")
                    
            }
            .padding([.horizontal, .bottom], 30.0)
            
            
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                isVisible.toggle()
            }
        }
        
        .background {
            RoundedRectangle(cornerRadius: 40)
                .foregroundStyle(.gray)
            RoundedRectangle(cornerRadius: 40)
                .strokeBorder(.black, lineWidth: 10)
        }
        
        .padding()
    }
    
}

#Preview {
    SuperheroCardView()
}
