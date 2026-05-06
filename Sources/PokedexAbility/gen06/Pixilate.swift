//
//  Pixilate.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as フェアリースキン in Japanese.
    ///
    /// The localized name of this ability is `"Pixilate"` in English and
    /// `"フェアリースキン"` in Japanese.
    ///
    /// Use this value when you need to refer to Pixilate by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.pixilate
    /// ```
    ///
    /// The ability's raw value is `"pixilate"`.
    static let pixilate = Pixilate.ability
}

enum Pixilate: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "pixilate")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "フェアリースキン"
        default:
            "Pixilate"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "ノーマルタイプの技がフェアリータイプになり、威力が1.3倍になる。"
        case (.vi, _):
            "Normal-type moves become Fairy-type moves and have 1.3x power."
        default:
            name(locale: locale)
        }
    }
}
