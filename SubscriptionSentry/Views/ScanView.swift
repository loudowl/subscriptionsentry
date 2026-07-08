import SwiftUI
import Vision

struct ScanView: View {
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State private var ocrText = ""

    var body: some View {
        VStack {
            if let inputImage = inputImage {
                Image(uiImage: inputImage)
                    .resizable()
                    .scaledToFit()
            }

            Button("Select Image") {
                showingImagePicker = true
            }

            Button("Process Image") {
                if let inputImage = inputImage {
                    processImage(image: inputImage)
                }
            }

            Text(ocrText)
                .padding()
        }
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker(image: $inputImage)
        }
    }

    private func processImage(image: UIImage) {
        OCRProcessor.processImage(image: image) { result in
            switch result {
            case .success(let text):
                self.ocrText = text
            case .failure(let error):
                print("Error processing image: \(error.localizedDescription)")
            }
        }
    }
}

struct ScanView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}
