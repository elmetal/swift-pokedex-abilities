//
//  SandRush.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as すなかき in Japanese.
    ///
    /// The localized name of this ability is `"Sand Rush"` in English and
    /// `"すなかき"` in Japanese.
    ///
    /// Use this value when you need to refer to Sand Rush by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.sandRush
    /// ```
    ///
    /// The ability's raw value is `"sand-rush"`.
    static let sandRush = SandRush.ability
}

enum SandRush: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sand-rush")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すなかき"
        default:
            "Sand Rush"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "すなあらしの時、すばやさが2倍になり、すなあらしのダメージを受けない。"
        case (.v, _):
            "During a sandstorm, Speed is doubled and sandstorm damage is prevented."
        default:
            name(locale: locale)
        }
    }
}
