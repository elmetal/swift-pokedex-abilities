//
//  BadDreams.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ナイトメア in Japanese.
    ///
    /// The localized name of this ability is `"Bad Dreams"` in English and
    /// `"ナイトメア"` in Japanese.
    ///
    /// Use this value when you need to refer to Bad Dreams by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.badDreams
    /// ```
    ///
    /// The ability's raw value is `"bad-dreams"`.
    static let badDreams = BadDreams.ability
}

enum BadDreams: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "bad-dreams")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ナイトメア"
        default:
            "Bad Dreams"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "ねむり状態の相手は毎ターン終了時に最大HPの1/8のダメージを受ける。"
        case (.iv, _):
            "Sleeping opposing Pokémon lose 1/8 of their maximum HP at the end of each turn."
        default:
            name(locale: locale)
        }
    }
}
