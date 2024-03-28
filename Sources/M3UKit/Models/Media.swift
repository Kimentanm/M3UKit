//
// M3UKit
//
// Copyright (c) 2022 Omar Albeik
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

public extension Playlist {
    /// Object representing a media.
    struct Media: Equatable, Hashable, Codable {
        typealias Metadata = (
            duration: Int,
            attributes: Attributes,
            name: String
        )

        init(metadata: Metadata, url: URL, urlString: String) {
            self.init(
                duration: metadata.duration,
                attributes: metadata.attributes,
                name: metadata.name,
                url: url,
                urlString: urlString
            )
        }

        /// Create a new media object.
        /// - Parameters:
        ///   - duration: duration.
        ///   - attributes: attributes.
        ///   - name: name.
        ///   - url: url.
        public init(
            duration: Int,
            attributes: Attributes,
            name: String,
            url: URL,
            urlString: String
        ) {
            self.duration = duration
            self.attributes = attributes
            self.name = name
            self.url = url
            self.urlString = urlString
        }

        /// Duration, Usually -1 for live stream content.
        public var duration: Int

        /// Attributes.
        public var attributes: Attributes

        /// Media name.
        public var name: String

        /// Media URL.
        public var url: URL

        public var urlString: String
    }
}
