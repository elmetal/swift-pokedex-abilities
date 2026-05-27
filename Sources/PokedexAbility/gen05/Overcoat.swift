//
//  Overcoat.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ぼうじん in Japanese.
    ///
    /// The localized name of this ability is `"Overcoat"` in English and
    /// `"ぼうじん"` in Japanese.
    ///
    /// Use this value when you need to refer to Overcoat by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.overcoat
    /// ```
    ///
    /// The ability's raw value is `"overcoat"`.
    static let overcoat = Overcoat.ability
}

enum Overcoat: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "overcoat")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぼうじん"
        default:
            "Overcoat"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "天気によるダメージを受けない。"
        case (.v ... .ix, _):
            "The Pokémon takes no damage from weather."
        default:
            name(locale: locale)
        }
    }
}
