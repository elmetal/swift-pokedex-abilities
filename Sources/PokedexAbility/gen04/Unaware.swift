//
//  Unaware.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let unaware = Unaware.ability
}

enum Unaware: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "unaware")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "てんねん"
        default:
            "Unaware"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "攻撃したり攻撃を受けたりする時、相手の能力ランクの変化を無視する。"
        case (.iv, _):
            "When attacking or being attacked, the opposing Pokémon's stat changes are ignored."
        default:
            name(locale: locale)
        }
    }
}
