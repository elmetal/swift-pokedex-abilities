//
//  HyperCutter.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as かいりきバサミ in Japanese.
    ///
    /// The localized name of this ability is `"Hyper Cutter"` in English and
    /// `"かいりきバサミ"` in Japanese.
    ///
    /// Use this value when you need to refer to Hyper Cutter by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.hyperCutter
    /// ```
    ///
    /// The ability's raw value is `"hyper-cutter"`.
    static let hyperCutter = HyperCutter.ability
}

enum HyperCutter: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "hyper-cutter")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かいりきバサミ"
        default:
            "Hyper Cutter"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "相手にこうげきを下げられない。"
        case (.iii ... .ix, _):
            "Prevents other Pokémon from lowering the Pokémon's Attack."
        default:
            name(locale: locale)
        }
    }
}
