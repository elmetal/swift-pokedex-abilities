//
//  Opportunist.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let opportunist = Opportunist.ability
}

enum Opportunist: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "opportunist")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "びんじょう"
        default:
            "Opportunist"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "相手の能力が上がった時、自分も同じ能力を上げる。"
        case (.ix, _):
            "When an opposing Pokémon's stat rises, this Pokémon copies the same stat increase."
        default:
            name(locale: locale)
        }
    }
}
