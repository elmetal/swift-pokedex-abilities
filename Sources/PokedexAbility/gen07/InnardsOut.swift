//
//  InnardsOut.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as とびだすなかみ in Japanese.
    ///
    /// The localized name of this ability is `"Innards Out"` in English and
    /// `"とびだすなかみ"` in Japanese.
    ///
    /// Use this value when you need to refer to Innards Out by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.innardsOut
    /// ```
    ///
    /// The ability's raw value is `"innards-out"`.
    static let innardsOut = InnardsOut.ability
}

enum InnardsOut: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "innards-out")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "とびだすなかみ"
        default:
            "Innards Out"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "攻撃でひんし状態にされた時、最後に減ったHP分のダメージを相手に与える。"
        case (.vii ... .ix, _):
            "When the Pokémon is knocked out by an attack, the attacker takes damage equal to the HP lost."
        default:
            name(locale: locale)
        }
    }
}
