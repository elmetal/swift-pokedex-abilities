//
//  Telepathy.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as テレパシー in Japanese.
    ///
    /// The localized name of this ability is `"Telepathy"` in English and
    /// `"テレパシー"` in Japanese.
    ///
    /// Use this value when you need to refer to Telepathy by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.telepathy
    /// ```
    ///
    /// The ability's raw value is `"telepathy"`.
    static let telepathy = Telepathy.ability
}

enum Telepathy: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "telepathy")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "テレパシー"
        default:
            "Telepathy"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "味方の攻撃技でダメージを受けない。"
        case (.v, _):
            "The Pokémon avoids damage from allies' moves."
        default:
            name(locale: locale)
        }
    }
}
