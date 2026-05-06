//
//  Steelworker.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as はがねつかい in Japanese.
    ///
    /// The localized name of this ability is `"Steelworker"` in English and
    /// `"はがねつかい"` in Japanese.
    ///
    /// Use this value when you need to refer to Steelworker by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.steelworker
    /// ```
    ///
    /// The ability's raw value is `"steelworker"`.
    static let steelworker = Steelworker.ability
}

enum Steelworker: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "steelworker")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はがねつかい"
        default:
            "Steelworker"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "はがねタイプの技の威力が1.5倍になる。"
        case (.vii, _):
            "Steel-type moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
