# swift-force

Use this package when a value is force: a push or a pull, such as a string's tension. Start from `Force`, a kind of quantity of swift-quantity, and make an amount with `Force.newtons(_:)`; it is a `Force.Value<Scalar>`, a `Tagged<Force, Scalar>`.

## Laws

- An amount of force is stored in newtons, the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is length: 1, mass: 1, time: -2 (exponents of the base dimensions).
- Amounts of force add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
- A mass times an acceleration is a force (F = m a), in either order, and a force over a mass is an acceleration and over an acceleration a mass.
