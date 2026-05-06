//
//  Dragonize.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ドラゴンスキン in Japanese.
    ///
    /// The localized name of this ability is `"Dragonize"` in English and
    /// `"ドラゴンスキン"` in Japanese.
    ///
    /// Use this value when you need to refer to Dragonize by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.dragonize
    /// ```
    ///
    /// The ability's raw value is `"dragonize"`.
    static let dragonize = Dragonize.ability
}

enum Dragonize: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "dragonize")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ドラゴンスキン"
        default:
            "Dragonize"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.champions, .japanese):
            "ノーマルタイプの技がドラゴンタイプになり、威力が1.2倍になる。"
        case (.champions, _):
            "Normal-type moves become Dragon-type moves and have 1.2x power."
        default:
            name(locale: locale)
        }
    }
}
