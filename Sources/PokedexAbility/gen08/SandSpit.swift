//
//  SandSpit.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let sandSpit = SandSpit.ability
}

enum SandSpit: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "sand-spit")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "すなはき"
        default:
            "Sand Spit"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "攻撃を受けると、天気をすなあらしにする。"
        case (.viii, _):
            "When hit by an attack, the Pokémon creates a sandstorm."
        default:
            name(locale: locale)
        }
    }
}
