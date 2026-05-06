//
//  Illusion.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as イリュージョン in Japanese.
    ///
    /// The localized name of this ability is `"Illusion"` in English and
    /// `"イリュージョン"` in Japanese.
    ///
    /// Use this value when you need to refer to Illusion by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.illusion
    /// ```
    ///
    /// The ability's raw value is `"illusion"`.
    static let illusion = Illusion.ability
}

enum Illusion: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "illusion")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "イリュージョン"
        default:
            "Illusion"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "ダメージを受けるまで、手持ちの最後のひんしでないポケモンの姿で登場する。"
        case (.v, _):
            "The Pokémon appears as the last conscious Pokémon in the party until it is damaged."
        default:
            name(locale: locale)
        }
    }
}
