//
//  Gluttony.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as くいしんぼう in Japanese.
    ///
    /// The localized name of this ability is `"Gluttony"` in English and
    /// `"くいしんぼう"` in Japanese.
    ///
    /// Use this value when you need to refer to Gluttony by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.gluttony
    /// ```
    ///
    /// The ability's raw value is `"gluttony"`.
    static let gluttony = Gluttony.ability
}

enum Gluttony: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "gluttony")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "くいしんぼう"
        default:
            "Gluttony"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "HPが1/4以下で使うきのみを、HPが1/2以下で使う。"
        case (.iv ... .ix, _):
            "Berries normally eaten at 1/4 HP or less are eaten at 1/2 HP or less instead."
        default:
            name(locale: locale)
        }
    }
}
