//
//  Guts.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as こんじょう in Japanese.
    ///
    /// The localized name of this ability is `"Guts"` in English and
    /// `"こんじょう"` in Japanese.
    ///
    /// Use this value when you need to refer to Guts by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.guts
    /// ```
    ///
    /// The ability's raw value is `"guts"`.
    static let guts = Guts.ability
}

enum Guts: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "guts")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "こんじょう"
        default:
            "Guts"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "状態異常の時、こうげきが1.5倍になる。"
        case (.iii ... .ix, _):
            "When affected by a status condition, Attack is 1.5x."
        default:
            name(locale: locale)
        }
    }
}
