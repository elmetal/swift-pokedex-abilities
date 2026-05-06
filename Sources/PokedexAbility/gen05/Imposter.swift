//
//  Imposter.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as かわりもの in Japanese.
    ///
    /// The localized name of this ability is `"Imposter"` in English and
    /// `"かわりもの"` in Japanese.
    ///
    /// Use this value when you need to refer to Imposter by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.imposter
    /// ```
    ///
    /// The ability's raw value is `"imposter"`.
    static let imposter = Imposter.ability
}

enum Imposter: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "imposter")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かわりもの"
        default:
            "Imposter"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "登場した時、目の前の相手に変身する。"
        case (.v, _):
            "When the Pokémon enters battle, it transforms into the opposing Pokémon."
        default:
            name(locale: locale)
        }
    }
}
