//
//  Normalize.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ノーマルスキン in Japanese.
    ///
    /// The localized name of this ability is `"Normalize"` in English and
    /// `"ノーマルスキン"` in Japanese.
    ///
    /// Use this value when you need to refer to Normalize by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.normalize
    /// ```
    ///
    /// The ability's raw value is `"normalize"`.
    static let normalize = Normalize.ability
}

enum Normalize: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "normalize")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ノーマルスキン"
        default:
            "Normalize"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "自分の技がノーマルタイプになる。"
        case (.iv, _):
            "The Pokémon's moves become Normal type."
        default:
            name(locale: locale)
        }
    }
}
