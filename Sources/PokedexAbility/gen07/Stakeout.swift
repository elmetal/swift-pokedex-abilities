//
//  Stakeout.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as はりこみ in Japanese.
    ///
    /// The localized name of this ability is `"Stakeout"` in English and
    /// `"はりこみ"` in Japanese.
    ///
    /// Use this value when you need to refer to Stakeout by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.stakeout
    /// ```
    ///
    /// The ability's raw value is `"stakeout"`.
    static let stakeout = Stakeout.ability
}

enum Stakeout: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "stakeout")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はりこみ"
        default:
            "Stakeout"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "交代して出てきた相手に与えるダメージが2倍になる。"
        case (.vii, _):
            "Damage is doubled against targets that switched in this turn."
        default:
            name(locale: locale)
        }
    }
}
