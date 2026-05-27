//
//  Symbiosis.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as きょうせい in Japanese.
    ///
    /// The localized name of this ability is `"Symbiosis"` in English and
    /// `"きょうせい"` in Japanese.
    ///
    /// Use this value when you need to refer to Symbiosis by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.symbiosis
    /// ```
    ///
    /// The ability's raw value is `"symbiosis"`.
    static let symbiosis = Symbiosis.ability
}

enum Symbiosis: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "symbiosis")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きょうせい"
        default:
            "Symbiosis"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi ... .ix, .japanese):
            "味方が道具を使うと、自分の持っている道具を渡す。"
        case (.vi ... .ix, _):
            "When an ally consumes its held item, the Pokémon gives that ally its held item."
        default:
            name(locale: locale)
        }
    }
}
