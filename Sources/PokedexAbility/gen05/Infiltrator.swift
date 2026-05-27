//
//  Infiltrator.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as すりぬけ in Japanese.
    ///
    /// The localized name of this ability is `"Infiltrator"` in English and
    /// `"すりぬけ"` in Japanese.
    ///
    /// Use this value when you need to refer to Infiltrator by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.infiltrator
    /// ```
    ///
    /// The ability's raw value is `"infiltrator"`.
    static let infiltrator = Infiltrator.ability
}

enum Infiltrator: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "infiltrator")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すりぬけ"
        default:
            "Infiltrator"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v ... .ix, .japanese):
            "相手の壁や守りの効果をすり抜けて技を出せる。"
        case (.v ... .ix, _):
            "The Pokémon's moves bypass the target's barriers and safeguards."
        default:
            name(locale: locale)
        }
    }
}
