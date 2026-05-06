//
//  Harvest.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as しゅうかく in Japanese.
    ///
    /// The localized name of this ability is `"Harvest"` in English and
    /// `"しゅうかく"` in Japanese.
    ///
    /// Use this value when you need to refer to Harvest by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.harvest
    /// ```
    ///
    /// The ability's raw value is `"harvest"`.
    static let harvest = Harvest.ability
}

enum Harvest: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "harvest")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "しゅうかく"
        default:
            "Harvest"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "毎ターン終了時、50%の確率で使ったきのみを復活させる。"
        case (.v, _):
            "At the end of each turn, there is a 50% chance to restore a consumed Berry."
        default:
            name(locale: locale)
        }
    }
}
