//
//  Levitate.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let levitate = Levitate.ability
}

enum Levitate: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "levitate")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふゆう"
        default:
            "Levitate"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "じめんタイプの技を受けない。"
        case (.iii, _):
            "Ground-type moves have no effect on the Pokémon."
        default:
            name(locale: locale)
        }
    }
}
