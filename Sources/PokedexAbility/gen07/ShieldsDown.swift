//
//  ShieldsDown.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as リミットシールド in Japanese.
    ///
    /// The localized name of this ability is `"Shields Down"` in English and
    /// `"リミットシールド"` in Japanese.
    ///
    /// Use this value when you need to refer to Shields Down by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.shieldsDown
    /// ```
    ///
    /// The ability's raw value is `"shields-down"`.
    static let shieldsDown = ShieldsDown.ability
}

enum ShieldsDown: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "shields-down")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "リミットシールド"
        default:
            "Shields Down"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "メテノはHPが半分より多い時、殻にこもった姿になり状態異常にならない。"
        case (.vii ... .ix, _):
            "Minior changes form and is protected from status conditions while its HP is above half."
        default:
            name(locale: locale)
        }
    }
}
