//
//  Contrary.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as あまのじゃく in Japanese.
    ///
    /// The localized name of this ability is `"Contrary"` in English and
    /// `"あまのじゃく"` in Japanese.
    ///
    /// Use this value when you need to refer to Contrary by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.contrary
    /// ```
    ///
    /// The ability's raw value is `"contrary"`.
    static let contrary = Contrary.ability
}

enum Contrary: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "contrary")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "あまのじゃく"
        default:
            "Contrary"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "能力ランクの変化が逆になる。"
        case (.v, _):
            "Stat changes are reversed."
        default:
            name(locale: locale)
        }
    }
}
