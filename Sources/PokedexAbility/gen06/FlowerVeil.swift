//
//  FlowerVeil.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as フラワーベール in Japanese.
    ///
    /// The localized name of this ability is `"Flower Veil"` in English and
    /// `"フラワーベール"` in Japanese.
    ///
    /// Use this value when you need to refer to Flower Veil by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.flowerVeil
    /// ```
    ///
    /// The ability's raw value is `"flower-veil"`.
    static let flowerVeil = FlowerVeil.ability
}

enum FlowerVeil: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "flower-veil")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "フラワーベール"
        default:
            "Flower Veil"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "味方のくさタイプのポケモンは能力を下げられず、状態異常にならない。"
        case (.vi, _):
            "Allied Grass-type Pokémon cannot have their stats lowered or be affected by status conditions."
        default:
            name(locale: locale)
        }
    }
}
