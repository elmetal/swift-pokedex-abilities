//
//  FullMetalBody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as メタルプロテクト in Japanese.
    ///
    /// The localized name of this ability is `"Full Metal Body"` in English and
    /// `"メタルプロテクト"` in Japanese.
    ///
    /// Use this value when you need to refer to Full Metal Body by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.fullMetalBody
    /// ```
    ///
    /// The ability's raw value is `"full-metal-body"`.
    static let fullMetalBody = FullMetalBody.ability
}

enum FullMetalBody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "full-metal-body")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "メタルプロテクト"
        default:
            "Full Metal Body"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "相手に能力を下げられない。"
        case (.vii ... .ix, _):
            "Prevents other Pokémon from lowering the Pokémon's stats."
        default:
            name(locale: locale)
        }
    }
}
