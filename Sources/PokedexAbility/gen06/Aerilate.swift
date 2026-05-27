//
//  Aerilate.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as スカイスキン in Japanese.
    ///
    /// The localized name of this ability is `"Aerilate"` in English and
    /// `"スカイスキン"` in Japanese.
    ///
    /// Use this value when you need to refer to Aerilate by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.aerilate
    /// ```
    ///
    /// The ability's raw value is `"aerilate"`.
    static let aerilate = Aerilate.ability
}

enum Aerilate: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "aerilate")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "スカイスキン"
        default:
            "Aerilate"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi ... .ix, .japanese):
            "ノーマルタイプの技がひこうタイプになり、威力が1.3倍になる。"
        case (.vi ... .ix, _):
            "Normal-type moves become Flying-type moves and have 1.3x power."
        default:
            name(locale: locale)
        }
    }
}
