//
//  DauntlessShield.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ふくつのたて in Japanese.
    ///
    /// The localized name of this ability is `"Dauntless Shield"` in English and
    /// `"ふくつのたて"` in Japanese.
    ///
    /// Use this value when you need to refer to Dauntless Shield by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.dauntlessShield
    /// ```
    ///
    /// The ability's raw value is `"dauntless-shield"`.
    static let dauntlessShield = DauntlessShield.ability
}

enum DauntlessShield: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "dauntless-shield")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふくつのたて"
        default:
            "Dauntless Shield"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "登場した時、ぼうぎょが1段階上がる。"
        case (.viii, _):
            "When the Pokémon enters battle, Defense rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
