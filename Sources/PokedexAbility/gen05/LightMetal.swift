//
//  LightMetal.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ライトメタル in Japanese.
    ///
    /// The localized name of this ability is `"Light Metal"` in English and
    /// `"ライトメタル"` in Japanese.
    ///
    /// Use this value when you need to refer to Light Metal by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.lightMetal
    /// ```
    ///
    /// The ability's raw value is `"light-metal"`.
    static let lightMetal = LightMetal.ability
}

enum LightMetal: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "light-metal")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ライトメタル"
        default:
            "Light Metal"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "自分の重さが半分になる。"
        case (.v ... .ix, _):
            "The Pokémon's weight is halved."
        default:
            name(locale: locale)
        }
    }
}
