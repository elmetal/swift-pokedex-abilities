//
//  Klutz.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ぶきよう in Japanese.
    ///
    /// The localized name of this ability is `"Klutz"` in English and
    /// `"ぶきよう"` in Japanese.
    ///
    /// Use this value when you need to refer to Klutz by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.klutz
    /// ```
    ///
    /// The ability's raw value is `"klutz"`.
    static let klutz = Klutz.ability
}

enum Klutz: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "klutz")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ぶきよう"
        default:
            "Klutz"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "持っている道具の効果を使えない。"
        case (.iv ... .ix, _):
            "The Pokémon cannot use the effects of its held item."
        default:
            name(locale: locale)
        }
    }
}
