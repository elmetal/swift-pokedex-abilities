//
//  WaterAbsorb.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ちょすい in Japanese.
    ///
    /// The localized name of this ability is `"Water Absorb"` in English and
    /// `"ちょすい"` in Japanese.
    ///
    /// Use this value when you need to refer to Water Absorb by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.waterAbsorb
    /// ```
    ///
    /// The ability's raw value is `"water-absorb"`.
    static let waterAbsorb = WaterAbsorb.ability
}

enum WaterAbsorb: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "water-absorb")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ちょすい"
        default:
            "Water Absorb"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "みずタイプの技を受けると、ダメージを受けず最大HPの1/4回復する。"
        case (.iii, _):
            "Water-type moves heal 1/4 of maximum HP instead of dealing damage."
        default:
            name(locale: locale)
        }
    }
}
