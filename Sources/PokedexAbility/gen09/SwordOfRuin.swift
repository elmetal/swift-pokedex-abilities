//
//  SwordOfRuin.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as わざわいのつるぎ in Japanese.
    ///
    /// The localized name of this ability is `"Sword of Ruin"` in English and
    /// `"わざわいのつるぎ"` in Japanese.
    ///
    /// Use this value when you need to refer to Sword of Ruin by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.swordOfRuin
    /// ```
    ///
    /// The ability's raw value is `"sword-of-ruin"`.
    static let swordOfRuin = SwordOfRuin.ability
}

enum SwordOfRuin: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sword-of-ruin")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "わざわいのつるぎ"
        default:
            "Sword of Ruin"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "自分以外のポケモンのぼうぎょが0.75倍になる。"
        case (.ix, _):
            "The Defense of all other Pokémon is reduced to 0.75x."
        default:
            name(locale: locale)
        }
    }
}
