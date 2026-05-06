//
//  SapSipper.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as そうしょく in Japanese.
    ///
    /// The localized name of this ability is `"Sap Sipper"` in English and
    /// `"そうしょく"` in Japanese.
    ///
    /// Use this value when you need to refer to Sap Sipper by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.sapSipper
    /// ```
    ///
    /// The ability's raw value is `"sap-sipper"`.
    static let sapSipper = SapSipper.ability
}

enum SapSipper: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sap-sipper")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "そうしょく"
        default:
            "Sap Sipper"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "くさタイプの技を受けると、ダメージを受けずこうげきが1段階上がる。"
        case (.v, _):
            "Grass-type moves deal no damage and raise Attack by one stage."
        default:
            name(locale: locale)
        }
    }
}
