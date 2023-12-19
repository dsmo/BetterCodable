struct DefaultlZeroStrategy<T: Numeric>: DefaultCodableStrategy where T: Decodable {
    static var defaultValue: T { return 0 }
}

/// Decodes Numerics defaulting to `0` if applicable
///
/// `@DefaultZero` decodes Numerics and defaults the value to 0 if the Decoder is unable to decode the value.
typealias DefaultZero<T> = DefaultCodable<DefaultlZeroStrategy<T>> where T: Decodable & Numeric
