import SwiftUI

struct OrderRowView: View {
    @ObservedObject var order: OrderEntity
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        HStack{
            TapiocaTeaView(iceCream: Int(order.iceCream),
                           flavor: Int(order.flavor),
                           nataDeCoco: order.nataDeCoco)
                .frame(width: 70, height: 70)
            VStack(alignment:.leading) {
                Text(order.flavorName)
                    .font(.title)
                Spacer()
                if order.nataDeCoco {
                    Text("Nata de coco")
                }
                HStack {
                    if order.iceCream != 0 {
                        Text(order.iceCreamName)
                    }
                    Spacer()
                    Text(self.dateFormatter.string(from: order.date!))
                        .font(.caption)
                }
            }
            if order.favorite {
                Image(systemName: "heart.circle.fill")
                    .foregroundColor(.pink)
            } else {
                Image(systemName: "heart.circle")
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {

    static var previews: some View {
        let context = (UIApplication.shared.delegate as! AppDelegate)
            .persistentContainer.viewContext
        let newOrder = OrderEntity(context: context)
            newOrder.flavor = Int16(1)
            newOrder.nataDeCoco = true
            newOrder.iceCream = Int16(2)
            newOrder.quantity = Int16(10)
            newOrder.other = ""
            newOrder.id = UUID().uuidString
            newOrder.date = Date()
            return OrderRowView(order: newOrder)
                .previewLayout(.fixed(width: 400,
                                      height: 80))
    }
}
