//
//  BattleBond.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as きずなへんげ in Japanese.
    ///
    /// The localized name of this ability is `"Battle Bond"` in English and
    /// `"きずなへんげ"` in Japanese.
    ///
    /// Use this value when you need to refer to Battle Bond by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.battleBond
    /// ```
    ///
    /// The ability's raw value is `"battle-bond"`.
    static let battleBond = BattleBond.ability
}

enum BattleBond: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "battle-bond")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "きずなへんげ"
        default:
            "Battle Bond"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vii, .japanese):
            "相手を倒すと、ゲッコウガがサトシゲッコウガに変化する。"
        case (.vii, _):
            "After knocking out a Pokémon, Greninja becomes Ash-Greninja."
        default:
            name(locale: locale)
        }
    }
}
