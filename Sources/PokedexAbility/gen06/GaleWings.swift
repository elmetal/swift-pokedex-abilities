//
//  GaleWings.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as はやてのつばさ in Japanese.
    ///
    /// The localized name of this ability is `"Gale Wings"` in English and
    /// `"はやてのつばさ"` in Japanese.
    ///
    /// Use this value when you need to refer to Gale Wings by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.galeWings
    /// ```
    ///
    /// The ability's raw value is `"gale-wings"`.
    static let galeWings = GaleWings.ability
}

enum GaleWings: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "gale-wings")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はやてのつばさ"
        default:
            "Gale Wings"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "ひこうタイプの技の優先度が1上がる。"
        case (.vi, _):
            "Flying-type moves have their priority increased by one."
        default:
            name(locale: locale)
        }
    }
}
