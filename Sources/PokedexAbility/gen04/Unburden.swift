//
//  Unburden.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as かるわざ in Japanese.
    ///
    /// The localized name of this ability is `"Unburden"` in English and
    /// `"かるわざ"` in Japanese.
    ///
    /// Use this value when you need to refer to Unburden by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.unburden
    /// ```
    ///
    /// The ability's raw value is `"unburden"`.
    static let unburden = Unburden.ability
}

enum Unburden: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "unburden")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かるわざ"
        default:
            "Unburden"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv ... .ix, .japanese):
            "持っていた道具がなくなると、すばやさが2倍になる。"
        case (.iv ... .ix, _):
            "After the Pokémon loses or uses its held item, Speed is doubled."
        default:
            name(locale: locale)
        }
    }
}
