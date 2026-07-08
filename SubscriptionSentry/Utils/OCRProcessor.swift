import UIKit
import Vision

class OCRProcessor {
    static func processImage(image: UIImage, completion: @escaping (Result<String, Error>) -> Void) {
        guard let cgImage = image.cgImage else {
            completion(.failure(NSError(domain: "OCRProcessor", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid image"])))
            return
        }

        let requestHandler = VNImageRequestHandler(cgImage: cgImage, options: [:])
        let request = VNRecognizeTextRequest { (request, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let observations = request.results as? [VNRecognizedTextObservation] else {
                completion(.success(""))
                return
            }

            let recognizedStrings = observations.compactMap { $0.topCandidates(1).first?.string }
            completion(.success(recognizedStrings.joined(separator: " ")))
        }
        request.recognitionLevel = .accurate

        do {
            try requestHandler.perform([request])
        } catch {
            completion(.failure(error))
        }
    }
}
