//
//  Plus.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as プラス in Japanese.
    ///
    /// The localized name of this ability is `"Plus"` in English and
    /// `"プラス"` in Japanese.
    ///
    /// Use this value when you need to refer to Plus by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.plus
    /// ```
    ///
    /// The ability's raw value is `"plus"`.
    static let plus = Plus.ability
}

enum Plus: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "plus")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "プラス"
        default:
            "Plus"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "ダブルバトルで味方にマイナスがいる時、とくこうが1.5倍になる。"
        case (.iii, _):
            "In Double Battles, Special Attack is 1.5x if an ally has Minus."
        default:
            name(locale: locale)
        }
    }
}
