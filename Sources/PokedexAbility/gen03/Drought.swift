//
//  Drought.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ひでり in Japanese.
    ///
    /// The localized name of this ability is `"Drought"` in English and
    /// `"ひでり"` in Japanese.
    ///
    /// Use this value when you need to refer to Drought by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.drought
    /// ```
    ///
    /// The ability's raw value is `"drought"`.
    static let drought = Drought.ability
}

enum Drought: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "drought")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ひでり"
        default:
            "Drought"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "登場した時、天気を永続する晴れにする。"
        case (.iii ... .ix, _):
            "When the Pokémon enters battle, it makes harsh sunlight continue indefinitely."
        default:
            name(locale: locale)
        }
    }
}
