//
//  WaterVeil.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as みずのベール in Japanese.
    ///
    /// The localized name of this ability is `"Water Veil"` in English and
    /// `"みずのベール"` in Japanese.
    ///
    /// Use this value when you need to refer to Water Veil by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.waterVeil
    /// ```
    ///
    /// The ability's raw value is `"water-veil"`.
    static let waterVeil = WaterVeil.ability
}

enum WaterVeil: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "water-veil")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "みずのベール"
        default:
            "Water Veil"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "やけど状態にならない。"
        case (.iii ... .ix, _):
            "The Pokémon cannot become burned."
        default:
            name(locale: locale)
        }
    }
}
