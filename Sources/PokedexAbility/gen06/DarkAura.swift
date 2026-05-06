//
//  DarkAura.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let darkAura = DarkAura.ability
}

enum DarkAura: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "dark-aura")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ダークオーラ"
        default:
            "Dark Aura"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "すべてのポケモンのあくタイプの技の威力が1.33倍になる。"
        case (.vi, _):
            "Dark-type moves used by any Pokémon have 1.33x power."
        default:
            name(locale: locale)
        }
    }
}
