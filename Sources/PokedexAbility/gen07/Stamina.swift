//
//  Stamina.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as じきゅうりょく in Japanese.
    ///
    /// The localized name of this ability is `"Stamina"` in English and
    /// `"じきゅうりょく"` in Japanese.
    ///
    /// Use this value when you need to refer to Stamina by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.stamina
    /// ```
    ///
    /// The ability's raw value is `"stamina"`.
    static let stamina = Stamina.ability
}

enum Stamina: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "stamina")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "じきゅうりょく"
        default:
            "Stamina"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "攻撃を受けると、ぼうぎょが1段階上がる。"
        case (.vii ... .ix, _):
            "When hit by an attack, Defense rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
