//
//  BeastBoost.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as ビーストブースト in Japanese.
    ///
    /// The localized name of this ability is `"Beast Boost"` in English and
    /// `"ビーストブースト"` in Japanese.
    ///
    /// Use this value when you need to refer to Beast Boost by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.beastBoost
    /// ```
    ///
    /// The ability's raw value is `"beast-boost"`.
    static let beastBoost = BeastBoost.ability
}

enum BeastBoost: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "beast-boost")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ビーストブースト"
        default:
            "Beast Boost"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii ... .ix, .japanese):
            "相手を倒した時、自分の最も高い能力が1段階上がる。"
        case (.vii ... .ix, _):
            "When the Pokémon knocks out another Pokémon, its highest stat rises by one stage."
        default:
            name(locale: locale)
        }
    }
}
