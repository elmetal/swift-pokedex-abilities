//
//  ClearBody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as クリアボディ in Japanese.
    ///
    /// The localized name of this ability is `"Clear Body"` in English and
    /// `"クリアボディ"` in Japanese.
    ///
    /// Use this value when you need to refer to Clear Body by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.clearBody
    /// ```
    ///
    /// The ability's raw value is `"clear-body"`.
    static let clearBody = ClearBody.ability
}

enum ClearBody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "clear-body")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "クリアボディ"
        default:
            "Clear Body"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "相手に能力を下げられない。"
        case (.iii, _):
            "Prevents other Pokémon from lowering the Pokémon's stats."
        default:
            name(locale: locale)
        }
    }
}
