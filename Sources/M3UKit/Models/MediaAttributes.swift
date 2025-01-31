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

extension Playlist.Media {
  /// Object representing attributes for a media.
  public struct Attributes: Equatable, Hashable, Codable {
    /// Create a new attributes object.
    /// - Parameters:
    ///   - id: id.
    ///   - name: name.
    ///   - country: country.
    ///   - language: language.
    ///   - logo: logo.
    ///   - channelNumber: channel number.
    ///   - shift: shift.
    ///   - groupTitle: group title.
    ///   - httpUserAgent: http user agent
    ///   - httpReferer: http referer
    ///   - seasonNumber: Season number (for TV shows).
    ///   - episodeNumber: Episode number (for TV shows).
    public init(
      id: String? = nil,
      name: String? = nil,
      country: String? = nil,
      language: String? = nil,
      logo: String? = nil,
      channelNumber: String? = nil,
      shift: String? = nil,
      groupTitle: String? = nil,
      httpUserAgent: String? = nil,
      httpReferer: String? = nil,
      httpHeader: String? = nil,
      seasonNumber: Int? = nil,
      episodeNumber: Int? = nil
    ) {
      self.id = id
      self.name = name
      self.country = country
      self.language = language
      self.logo = logo
      self.channelNumber = channelNumber
      self.shift = shift
      self.groupTitle = groupTitle
      self.httpUserAgent = httpUserAgent
      self.httpReferer = httpReferer
      self.httpHeader = httpHeader
      self.seasonNumber = seasonNumber
      self.episodeNumber = episodeNumber
    }

    /// tvg-id.
    public var id: String?

    /// tvg-name.
    public var name: String?

    /// tvg-country.
    public var country: String?

    /// tvg-language.
    public var language: String?

    /// tvg-logo.
    public var logo: String?

    /// tvg-chno.
    public var channelNumber: String?

    /// tvg-shift.
    public var shift: String?

    /// group-title.
    public var groupTitle: String?

    public var httpUserAgent: String?

    public var httpReferer: String?

    public var httpHeader: String?

    /// Season number (for TV shows).
    public var seasonNumber: Int?

    /// Episode number (for TV shows).
    public var episodeNumber: Int?
  }
}
