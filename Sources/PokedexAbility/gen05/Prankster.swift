//
//  Prankster.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as いたずらごころ in Japanese.
    ///
    /// The localized name of this ability is `"Prankster"` in English and
    /// `"いたずらごころ"` in Japanese.
    ///
    /// Use this value when you need to refer to Prankster by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.prankster
    /// ```
    ///
    /// The ability's raw value is `"prankster"`.
    static let prankster = Prankster.ability
}

enum Prankster: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "prankster")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "いたずらごころ"
        default:
            "Prankster"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "変化技の優先度が1上がる。"
        case (.v ... .ix, _):
            "Status moves have their priority increased by one."
        default:
            name(locale: locale)
        }
    }
}
