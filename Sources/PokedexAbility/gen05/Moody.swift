//
//  Moody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ムラっけ in Japanese.
    ///
    /// The localized name of this ability is `"Moody"` in English and
    /// `"ムラっけ"` in Japanese.
    ///
    /// Use this value when you need to refer to Moody by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.moody
    /// ```
    ///
    /// The ability's raw value is `"moody"`.
    static let moody = Moody.ability
}

enum Moody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "moody")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ムラっけ"
        default:
            "Moody"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "毎ターン終了時、どれか1つの能力が2段階上がり、別の能力が1段階下がる。"
        case (.v, _):
            "At the end of each turn, one stat rises by two stages and another stat falls by one stage."
        default:
            name(locale: locale)
        }
    }
}
