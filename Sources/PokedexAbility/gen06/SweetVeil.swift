//
//  SweetVeil.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as スイートベール in Japanese.
    ///
    /// The localized name of this ability is `"Sweet Veil"` in English and
    /// `"スイートベール"` in Japanese.
    ///
    /// Use this value when you need to refer to Sweet Veil by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.sweetVeil
    /// ```
    ///
    /// The ability's raw value is `"sweet-veil"`.
    static let sweetVeil = SweetVeil.ability
}

enum SweetVeil: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sweet-veil")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "スイートベール"
        default:
            "Sweet Veil"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "自分と味方はねむり状態にならない。"
        case (.vi, _):
            "The Pokémon and its allies cannot fall asleep."
        default:
            name(locale: locale)
        }
    }
}
