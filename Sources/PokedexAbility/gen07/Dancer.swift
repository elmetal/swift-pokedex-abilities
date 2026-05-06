//
//  Dancer.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as おどりこ in Japanese.
    ///
    /// The localized name of this ability is `"Dancer"` in English and
    /// `"おどりこ"` in Japanese.
    ///
    /// Use this value when you need to refer to Dancer by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.dancer
    /// ```
    ///
    /// The ability's raw value is `"dancer"`.
    static let dancer = Dancer.ability
}

enum Dancer: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "dancer")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "おどりこ"
        default:
            "Dancer"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "他のポケモンが踊りの技を使うと、続けて同じ技を出す。"
        case (.vii, _):
            "When another Pokémon uses a dance move, the Pokémon immediately copies it."
        default:
            name(locale: locale)
        }
    }
}
