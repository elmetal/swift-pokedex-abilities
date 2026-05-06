//
//  Sharpness.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as きれあじ in Japanese.
    ///
    /// The localized name of this ability is `"Sharpness"` in English and
    /// `"きれあじ"` in Japanese.
    ///
    /// Use this value when you need to refer to Sharpness by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.sharpness
    /// ```
    ///
    /// The ability's raw value is `"sharpness"`.
    static let sharpness = Sharpness.ability
}

enum Sharpness: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sharpness")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きれあじ"
        default:
            "Sharpness"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "切る技の威力が1.5倍になる。"
        case (.ix, _):
            "Slicing moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
