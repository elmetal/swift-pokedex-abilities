//
//  Mimicry.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ぎたい in Japanese.
    ///
    /// The localized name of this ability is `"Mimicry"` in English and
    /// `"ぎたい"` in Japanese.
    ///
    /// Use this value when you need to refer to Mimicry by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.mimicry
    /// ```
    ///
    /// The ability's raw value is `"mimicry"`.
    static let mimicry = Mimicry.ability
}

enum Mimicry: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "mimicry")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぎたい"
        default:
            "Mimicry"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii ... .ix, .japanese):
            "フィールドに応じて自分のタイプが変わる。"
        case (.viii ... .ix, _):
            "The Pokémon's type changes according to the terrain."
        default:
            name(locale: locale)
        }
    }
}
