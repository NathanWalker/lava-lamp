//
//  LavaLamp.swift
//  LavaLamp
//
//  Created by InnAppsCoding
//  Copyright InnAppsCoding. All rights reserved.
//

import SwiftUI

class BindableData: ObservableObject {
    @Published var props: NSMutableDictionary = [:]
}

struct LavaLamp: View {
    @ObservedObject var data = BindableData()
    @State private var upperBlobSystem: BlobSystem
    @State private var lowerBlobSystem: BlobSystem
    
    let blobSize: CGFloat
    
    init() {
        let size: CGFloat = 200 // Change size here
        self.upperBlobSystem = BlobSystem(size: size)
        self.lowerBlobSystem = BlobSystem(size: size)
        self.blobSize = size
        print("here")
    }
    
    var body: some View {
        ZStack {
            TimelineView(.animation) { timeline in
                let time = timeline.date.timeIntervalSinceReferenceDate
                
                gradientColor.mask {
                    Canvas { context, canvasSize in
                        upperBlobSystem.update(date: time)
                        lowerBlobSystem.update(date: time)
                        
                        context.addFilter(.alphaThreshold(min: 0.3))
                        context.addFilter(.blur(radius: blobSize / 10))
                        
                        context.drawLayer { layer in
                            if let resolvedSymbol = context.resolveSymbol(id: 0) {
                                layer.draw(resolvedSymbol, at: CGPoint(x: canvasSize.width / 2, y: canvasSize.height / 2 - blobSize * 1.1))
                            }
                            
                            for id in upperBlobSystem.blobs.map({ $0.id }) {
                                if let resolvedSymbol = context.resolveSymbol(id: id) {
                                    layer.draw(resolvedSymbol, at: CGPoint(x: canvasSize.width / 2, y: canvasSize.height / 2 - blobSize * 1.1))
                                }
                            }
                            
                            if let resolvedSymbol = context.resolveSymbol(id: 1) {
                                layer.draw(resolvedSymbol, at: CGPoint(x: canvasSize.width / 2, y: canvasSize.height / 2 + (blobSize * 0.6)))
                            }
                            
                            for id in lowerBlobSystem.blobs.map({ $0.id }) {
                                if let resolvedSymbol = context.resolveSymbol(id: id) {
                                    layer.draw(resolvedSymbol, at: CGPoint(x: canvasSize.width / 2, y: canvasSize.height / 2 + (blobSize * 0.6)))
                                }
                            }
                        }
                    } symbols: {
                        ForEach(0..<2) { i in
                            Capsule()
                                .frame(width: blobSize * 0.75, height: blobSize * 0.125)
                                .tag(i)
                        }
                        ForEach(upperBlobSystem.blobs, id: \.self) { blob in
                            circle(blob)
                                .rotationEffect(.degrees(180))
                        }
                        ForEach(lowerBlobSystem.blobs, id: \.self) { blob in
                            circle(blob)
                        }
                    }
                }
                .mask(lavaLampImage(filled: true))
            }
            lavaLampImage(filled: false)
        }
        .background(Color.black)
        // .frame(width: 414, height: 950)
        .preferredColorScheme(.dark)
    }
    
    func lavaLampImage(filled: Bool) -> some View {
        Image("lava.lamp" + (filled ? ".fill" : ""))
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: blobSize)
    }
    
    var gradientColor: some View {
        let gradientTopColor = data.props.value(forKey: "gradientTopColor") as? UIColor
        let gradientMiddleColor = data.props.value(forKey: "gradientMiddleColor") as? UIColor
        let gradientBottomColor = data.props.value(forKey: "gradientBottomColor") as? UIColor
        return Rectangle().fill(LinearGradient(colors: [(gradientTopColor != nil) ? Color(gradientTopColor!) : .purple, (gradientMiddleColor != nil) ? Color(gradientMiddleColor!) : .purple, (gradientBottomColor != nil) ? Color(gradientBottomColor!) : .pink], startPoint: .top, endPoint: .bottom))
    }

    private func circle(_ blob: Blob) -> some View {
        Circle()
            .frame(width: blobSize * 0.2, height: blobSize * 0.2)
            .offset(x: blob.x, y: blob.y)
            .tag(blob.id)
    }
}

private struct Blob: Hashable {
    let id = UUID()
    var x: Double
    var y: Double
    let yOffset: CGFloat
    let creationDate = Date.now.timeIntervalSinceReferenceDate
}

private class BlobSystem {
    let size: CGFloat
    var blobs: [Blob] = []

    init(size: CGFloat) {
        self.size = size
        newBlobTimer()
    }
    
    func update(date: TimeInterval) {
        let deathDate = date - (size * 0.06)
        
        for i in 0..<blobs.count {
            blobs[i].y -= blobs[i].yOffset
        }
        
        for blob in blobs {
            if blob.creationDate < deathDate {
                blobs.removeAll(where: { $0.id == blob.id })
            }
        }
    }
    
    private func newBlobTimer() {
        addNewBlobs()
        Timer.scheduledTimer(withTimeInterval: 3.5, repeats: true) { _ in
            self.addNewBlobs()
        }
    }
    
    private func addNewBlobs() {
        for _ in 0..<Int.random(in: 0...2) {
            let randomX = CGFloat.random(in: -(size * 0.35)...(size * 0.35))
            let randomY = CGFloat.random(in: 0...(size * 0.25))
            let randomYOffset = CGFloat.random(in: (size * 0.003)...(size * 0.01))
            
            self.blobs.append(Blob(x: randomX, y: randomY, yOffset: randomYOffset))
            self.blobs.append(
                Blob(x: randomX + CGFloat.random(in: -(size * 0.15)...(size * 0.15)),
                     y: randomY + CGFloat.random(in: 0...(size * 0.3)),
                     yOffset: randomYOffset)
            )
        }
    }
}

struct LavaLamp_Previews: PreviewProvider {
    static var previews: some View {
        LavaLamp()
    }
}
