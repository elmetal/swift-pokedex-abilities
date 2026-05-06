//
//  ShadowTag.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let shadowTag = ShadowTag.ability
}

enum ShadowTag: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "shadow-tag")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "かげふみ"
        default:
            "Shadow Tag"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "相手は逃げたり交代したりできない。"
        case (.iii, _):
            "Opposing Pokémon cannot flee or switch out."
        default:
            name(locale: locale)
        }
    }
}
