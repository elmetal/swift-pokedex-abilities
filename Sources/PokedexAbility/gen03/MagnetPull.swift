//
//  MagnetPull.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as じりょく in Japanese.
    ///
    /// The localized name of this ability is `"Magnet Pull"` in English and
    /// `"じりょく"` in Japanese.
    ///
    /// Use this value when you need to refer to Magnet Pull by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.magnetPull
    /// ```
    ///
    /// The ability's raw value is `"magnet-pull"`.
    static let magnetPull = MagnetPull.ability
}

enum MagnetPull: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "magnet-pull")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "じりょく"
        default:
            "Magnet Pull"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "相手のはがねタイプのポケモンは逃げたり交代したりできない。"
        case (.iii ... .ix, _):
            "Steel-type opposing Pokémon cannot flee or switch out."
        default:
            name(locale: locale)
        }
    }
}
