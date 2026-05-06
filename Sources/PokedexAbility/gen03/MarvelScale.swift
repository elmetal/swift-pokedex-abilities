//
//  MarvelScale.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ふしぎなうろこ in Japanese.
    ///
    /// The localized name of this ability is `"Marvel Scale"` in English and
    /// `"ふしぎなうろこ"` in Japanese.
    ///
    /// Use this value when you need to refer to Marvel Scale by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.marvelScale
    /// ```
    ///
    /// The ability's raw value is `"marvel-scale"`.
    static let marvelScale = MarvelScale.ability
}

enum MarvelScale: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "marvel-scale")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふしぎなうろこ"
        default:
            "Marvel Scale"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "状態異常の時、ぼうぎょが1.5倍になる。"
        case (.iii, _):
            "When affected by a status condition, Defense is 1.5x."
        default:
            name(locale: locale)
        }
    }
}
