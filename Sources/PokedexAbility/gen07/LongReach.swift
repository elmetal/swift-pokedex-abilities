//
//  LongReach.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as えんかく in Japanese.
    ///
    /// The localized name of this ability is `"Long Reach"` in English and
    /// `"えんかく"` in Japanese.
    ///
    /// Use this value when you need to refer to Long Reach by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.longReach
    /// ```
    ///
    /// The ability's raw value is `"long-reach"`.
    static let longReach = LongReach.ability
}

enum LongReach: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "long-reach")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "えんかく"
        default:
            "Long Reach"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "直接攻撃の技を使っても接触しない。"
        case (.vii, _):
            "The Pokémon uses moves without making contact."
        default:
            name(locale: locale)
        }
    }
}
