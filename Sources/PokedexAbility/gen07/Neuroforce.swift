//
//  Neuroforce.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ブレインフォース in Japanese.
    ///
    /// The localized name of this ability is `"Neuroforce"` in English and
    /// `"ブレインフォース"` in Japanese.
    ///
    /// Use this value when you need to refer to Neuroforce by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.neuroforce
    /// ```
    ///
    /// The ability's raw value is `"neuroforce"`.
    static let neuroforce = Neuroforce.ability
}

enum Neuroforce: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "neuroforce")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ブレインフォース"
        default:
            "Neuroforce"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "効果抜群の技で与えるダメージが1.25倍になる。"
        case (.vii ... .ix, _):
            "Super-effective attacks deal 1.25x damage."
        default:
            name(locale: locale)
        }
    }
}
