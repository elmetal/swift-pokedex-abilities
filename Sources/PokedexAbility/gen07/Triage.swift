//
//  Triage.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ヒーリングシフト in Japanese.
    ///
    /// The localized name of this ability is `"Triage"` in English and
    /// `"ヒーリングシフト"` in Japanese.
    ///
    /// Use this value when you need to refer to Triage by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.triage
    /// ```
    ///
    /// The ability's raw value is `"triage"`.
    static let triage = Triage.ability
}

enum Triage: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "triage")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ヒーリングシフト"
        default:
            "Triage"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "回復技の優先度が3上がる。"
        case (.vii, _):
            "Healing moves have their priority increased by three."
        default:
            name(locale: locale)
        }
    }
}
