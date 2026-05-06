//
//  ToxicBoost.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as どくぼうそう in Japanese.
    ///
    /// The localized name of this ability is `"Toxic Boost"` in English and
    /// `"どくぼうそう"` in Japanese.
    ///
    /// Use this value when you need to refer to Toxic Boost by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.toxicBoost
    /// ```
    ///
    /// The ability's raw value is `"toxic-boost"`.
    static let toxicBoost = ToxicBoost.ability
}

enum ToxicBoost: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "toxic-boost")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "どくぼうそう"
        default:
            "Toxic Boost"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "どく・もうどく状態の時、こうげきが1.5倍になる。"
        case (.v, _):
            "When poisoned, Attack is 1.5x."
        default:
            name(locale: locale)
        }
    }
}
