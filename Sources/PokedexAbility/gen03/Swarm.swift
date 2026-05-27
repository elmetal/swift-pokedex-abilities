//
//  Swarm.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as むしのしらせ in Japanese.
    ///
    /// The localized name of this ability is `"Swarm"` in English and
    /// `"むしのしらせ"` in Japanese.
    ///
    /// Use this value when you need to refer to Swarm by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.swarm
    /// ```
    ///
    /// The ability's raw value is `"swarm"`.
    static let swarm = Swarm.ability
}

enum Swarm: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "swarm")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "むしのしらせ"
        default:
            "Swarm"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii ... .ix, .japanese):
            "HPが1/3以下の時、むしタイプの攻撃技の威力が1.5倍になる。"
        case (.iii ... .ix, _):
            "When HP is 1/3 or less, Bug-type attack moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
