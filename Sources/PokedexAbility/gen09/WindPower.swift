//
//  WindPower.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ふうりょくでんき in Japanese.
    ///
    /// The localized name of this ability is `"Wind Power"` in English and
    /// `"ふうりょくでんき"` in Japanese.
    ///
    /// Use this value when you need to refer to Wind Power by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.windPower
    /// ```
    ///
    /// The ability's raw value is `"wind-power"`.
    static let windPower = WindPower.ability
}

enum WindPower: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "wind-power")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふうりょくでんき"
        default:
            "Wind Power"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "風の技を受けたり、おいかぜが吹いたりすると充電状態になる。"
        case (.ix, _):
            "When hit by a wind move or Tailwind begins, the Pokémon becomes charged."
        default:
            name(locale: locale)
        }
    }
}
