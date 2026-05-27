//
//  GrassPelt.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as くさのけがわ in Japanese.
    ///
    /// The localized name of this ability is `"Grass Pelt"` in English and
    /// `"くさのけがわ"` in Japanese.
    ///
    /// Use this value when you need to refer to Grass Pelt by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.grassPelt
    /// ```
    ///
    /// The ability's raw value is `"grass-pelt"`.
    static let grassPelt = GrassPelt.ability
}

enum GrassPelt: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "grass-pelt")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "くさのけがわ"
        default:
            "Grass Pelt"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi ... .ix, .japanese):
            "グラスフィールドの時、ぼうぎょが1.5倍になる。"
        case (.vi ... .ix, _):
            "During Grassy Terrain, Defense is 1.5x."
        default:
            name(locale: locale)
        }
    }
}
