//
//  CuteCharm.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as メロメロボディ in Japanese.
    ///
    /// The localized name of this ability is `"Cute Charm"` in English and
    /// `"メロメロボディ"` in Japanese.
    ///
    /// Use this value when you need to refer to Cute Charm by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.cuteCharm
    /// ```
    ///
    /// The ability's raw value is `"cute-charm"`.
    static let cuteCharm = CuteCharm.ability
}

enum CuteCharm: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "cute-charm")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "メロメロボディ"
        default:
            "Cute Charm"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "異性から直接攻撃を受けた時、30%の確率で相手をメロメロ状態にする。"
        case (.iii, _):
            "Contact has a 30% chance to infatuate an attacker of the opposite gender."
        default:
            name(locale: locale)
        }
    }
}
