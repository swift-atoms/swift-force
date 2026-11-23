/// Force: a push or a pull, such as a string's tension, stored in newtons.
public enum Force {}

extension Force: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(length: 1, mass: 1, time: -2) }
}

extension Force {
    /// An amount of force, its scalar in newtons.
    public typealias Value<Scalar> = Tagged<Force, Scalar>

    /// An amount of force given in newtons.
    @inlinable
    public static func newtons<Scalar>(_ scalar: Scalar) -> Value<Scalar> {
        amount(scalar)
    }
}
