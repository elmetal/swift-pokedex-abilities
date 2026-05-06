//
//  SlushRush.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ゆきかき in Japanese.
    ///
    /// The localized name of this ability is `"Slush Rush"` in English and
    /// `"ゆきかき"` in Japanese.
    ///
    /// Use this value when you need to refer to Slush Rush by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.slushRush
    /// ```
    ///
    /// The ability's raw value is `"slush-rush"`.
    static let slushRush = SlushRush.ability
}

enum SlushRush: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "slush-rush")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ゆきかき"
        default:
            "Slush Rush"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "あられの時、すばやさが2倍になる。"
        case (.vii, _):
            "During hail, Speed is doubled."
        default:
            name(locale: locale)
        }
    }
}
