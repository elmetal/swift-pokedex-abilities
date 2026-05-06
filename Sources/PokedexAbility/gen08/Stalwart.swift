//
//  Stalwart.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as すじがねいり in Japanese.
    ///
    /// The localized name of this ability is `"Stalwart"` in English and
    /// `"すじがねいり"` in Japanese.
    ///
    /// Use this value when you need to refer to Stalwart by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.stalwart
    /// ```
    ///
    /// The ability's raw value is `"stalwart"`.
    static let stalwart = Stalwart.ability
}

enum Stalwart: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "stalwart")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すじがねいり"
        default:
            "Stalwart"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "技を引き寄せる効果を無視して攻撃できる。"
        case (.viii, _):
            "The Pokémon's moves ignore effects that redirect moves."
        default:
            name(locale: locale)
        }
    }
}
