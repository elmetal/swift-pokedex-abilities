//
//  Healer.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as いやしのこころ in Japanese.
    ///
    /// The localized name of this ability is `"Healer"` in English and
    /// `"いやしのこころ"` in Japanese.
    ///
    /// Use this value when you need to refer to Healer by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.healer
    /// ```
    ///
    /// The ability's raw value is `"healer"`.
    static let healer = Healer.ability
}

enum Healer: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "healer")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "いやしのこころ"
        default:
            "Healer"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "毎ターン終了時、30%の確率で隣の味方の状態異常を治す。"
        case (.v, _):
            "At the end of each turn, there is a 30% chance to heal an adjacent ally's status condition."
        default:
            name(locale: locale)
        }
    }
}
