//
//  CuriousMedicine.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as きみょうなくすり in Japanese.
    ///
    /// The localized name of this ability is `"Curious Medicine"` in English and
    /// `"きみょうなくすり"` in Japanese.
    ///
    /// Use this value when you need to refer to Curious Medicine by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.curiousMedicine
    /// ```
    ///
    /// The ability's raw value is `"curious-medicine"`.
    static let curiousMedicine = CuriousMedicine.ability
}

enum CuriousMedicine: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "curious-medicine")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きみょうなくすり"
        default:
            "Curious Medicine"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "登場した時、味方の能力ランクの変化を元に戻す。"
        case (.viii, _):
            "When the Pokémon enters battle, allies' stat changes are reset."
        default:
            name(locale: locale)
        }
    }
}
