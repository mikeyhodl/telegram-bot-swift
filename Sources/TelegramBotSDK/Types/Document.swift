// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// This object represents a general file (as opposed to photos, voice messages and audio files).
///
/// - SeeAlso: <https://core.telegram.org/bots/api#document>

public struct Document: JsonConvertible, InternalJsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: Any {
        get {
            return internalJson.object
        }
        set {
            internalJson = JSON(newValue)
        }
    }
    internal var internalJson: JSON

    /// Unique file identifier
    public var fileId: String {
        get { return internalJson["file_id"].stringValue }
        set { internalJson["file_id"].stringValue = newValue }
    }

    /// Optional. Document thumbnail as defined by sender
    public var thumb: PhotoSize? {
        get {
            let value = internalJson["thumb"]
            return value.isNullOrUnknown ? nil : PhotoSize(json: value)
        }
        set {
            internalJson["thumb"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. Original filename as defined by sender
    public var fileName: String? {
        get { return internalJson["file_name"].string }
        set { internalJson["file_name"].string = newValue }
    }

    /// Optional. MIME type of the file as defined by sender
    public var mimeType: String? {
        get { return internalJson["mime_type"].string }
        set { internalJson["mime_type"].string = newValue }
    }

    /// Optional. File size
    public var fileSize: Int? {
        get { return internalJson["file_size"].int }
        set { internalJson["file_size"].int = newValue }
    }

    internal init(internalJson: JSON = [:]) {
        self.internalJson = internalJson
    }
    public init(json: Any) {
        self.internalJson = JSON(json)
    }
}
