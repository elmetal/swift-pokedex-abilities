//
//  BattleBond.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
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
