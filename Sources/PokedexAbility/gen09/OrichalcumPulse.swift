//
//  OrichalcumPulse.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ひひいろのこどう in Japanese.
    ///
    /// The localized name of this ability is `"Orichalcum Pulse"` in English and
    /// `"ひひいろのこどう"` in Japanese.
    ///
    /// Use this value when you need to refer to Orichalcum Pulse by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.orichalcumPulse
    /// ```
    ///
    /// The ability's raw value is `"orichalcum-pulse"`.
    static let orichalcumPulse = OrichalcumPulse.ability
}

enum OrichalcumPulse: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "orichalcum-pulse")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ひひいろのこどう"
        default:
            "Orichalcum Pulse"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "登場した時、天気を晴れにし、晴れの時こうげきが上がる。"
        case (.ix, _):
            "When the Pokémon enters battle, it creates harsh sunlight, and its Attack is boosted during harsh sunlight."
        default:
            name(locale: locale)
        }
    }
}
