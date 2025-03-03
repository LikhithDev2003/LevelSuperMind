import SwiftUI

struct LibraryMenuItemView: View {
    let item: LibraryItem

    var body: some View {
        HStack {
            Image(item.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 22)
                .foregroundColor(.white)
            
            Text(item.title)
                .foregroundColor(.white)
                .font(.system(size: 16))
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .resizable()
                .scaledToFit()
                .frame(width: 10, height: 10)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.clear)
        .cornerRadius(8)
    }
}
