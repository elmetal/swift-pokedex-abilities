//
//  PunkRock.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as パンクロック in Japanese.
    ///
    /// The localized name of this ability is `"Punk Rock"` in English and
    /// `"パンクロック"` in Japanese.
    ///
    /// Use this value when you need to refer to Punk Rock by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.punkRock
    /// ```
    ///
    /// The ability's raw value is `"punk-rock"`.
    static let punkRock = PunkRock.ability
}

enum PunkRock: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "punk-rock")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "パンクロック"
        default:
            "Punk Rock"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "音に関係する技の威力が1.3倍になり、音に関係する技で受けるダメージが半分になる。"
        case (.viii, _):
            "Sound-based moves used by the Pokémon have 1.3x power, and sound-based damage taken is halved."
        default:
            name(locale: locale)
        }
    }
}
