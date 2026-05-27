//
//  PrimordialSea.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as はじまりのうみ in Japanese.
    ///
    /// The localized name of this ability is `"Primordial Sea"` in English and
    /// `"はじまりのうみ"` in Japanese.
    ///
    /// Use this value when you need to refer to Primordial Sea by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.primordialSea
    /// ```
    ///
    /// The ability's raw value is `"primordial-sea"`.
    static let primordialSea = PrimordialSea.ability
}

enum PrimordialSea: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "primordial-sea")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はじまりのうみ"
        default:
            "Primordial Sea"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi ... .ix, .japanese):
            "ほのおタイプの攻撃技を無効化する強い雨にする。"
        case (.vi ... .ix, _):
            "Creates heavy rain that nullifies Fire-type attacks."
        default:
            name(locale: locale)
        }
    }
}
