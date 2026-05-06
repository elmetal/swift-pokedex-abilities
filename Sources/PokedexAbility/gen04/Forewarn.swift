//
//  Forewarn.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as よちむ in Japanese.
    ///
    /// The localized name of this ability is `"Forewarn"` in English and
    /// `"よちむ"` in Japanese.
    ///
    /// Use this value when you need to refer to Forewarn by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.forewarn
    /// ```
    ///
    /// The ability's raw value is `"forewarn"`.
    static let forewarn = Forewarn.ability
}

enum Forewarn: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "forewarn")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "よちむ"
        default:
            "Forewarn"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "登場した時、相手の技のうち威力が最も高い技の1つを知る。"
        case (.iv, _):
            "When the Pokémon enters battle, it reveals one of an opposing Pokémon's moves with the highest power."
        default:
            name(locale: locale)
        }
    }
}
