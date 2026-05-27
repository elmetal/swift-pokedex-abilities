//
//  Immunity.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as めんえき in Japanese.
    ///
    /// The localized name of this ability is `"Immunity"` in English and
    /// `"めんえき"` in Japanese.
    ///
    /// Use this value when you need to refer to Immunity by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.immunity
    /// ```
    ///
    /// The ability's raw value is `"immunity"`.
    static let immunity = Immunity.ability
}

enum Immunity: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "immunity")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "めんえき"
        default:
            "Immunity"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "どく・もうどく状態にならない。"
        case (.iii ... .ix, _):
            "The Pokémon cannot be poisoned."
        default:
            name(locale: locale)
        }
    }
}
