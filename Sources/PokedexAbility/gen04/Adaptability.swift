//
//  Adaptability.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as てきおうりょく in Japanese.
    ///
    /// The localized name of this ability is `"Adaptability"` in English and
    /// `"てきおうりょく"` in Japanese.
    ///
    /// Use this value when you need to refer to Adaptability by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.adaptability
    /// ```
    ///
    /// The ability's raw value is `"adaptability"`.
    static let adaptability = Adaptability.ability
}

enum Adaptability: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "adaptability")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "てきおうりょく"
        default:
            "Adaptability"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "タイプ一致の攻撃技の威力補正が1.5倍から2倍になる。"
        case (.iv ... .ix, _):
            "Same-type attack bonus becomes 2x instead of 1.5x."
        default:
            name(locale: locale)
        }
    }
}
