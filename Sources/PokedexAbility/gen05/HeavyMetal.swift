//
//  HeavyMetal.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ヘヴィメタル in Japanese.
    ///
    /// The localized name of this ability is `"Heavy Metal"` in English and
    /// `"ヘヴィメタル"` in Japanese.
    ///
    /// Use this value when you need to refer to Heavy Metal by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.heavyMetal
    /// ```
    ///
    /// The ability's raw value is `"heavy-metal"`.
    static let heavyMetal = HeavyMetal.ability
}

enum HeavyMetal: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "heavy-metal")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ヘヴィメタル"
        default:
            "Heavy Metal"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "自分の重さが2倍になる。"
        case (.v, _):
            "The Pokémon's weight is doubled."
        default:
            name(locale: locale)
        }
    }
}
