//
//  Forewarn.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let forewarn = Forewarn.ability
}

enum Forewarn: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "forewarn")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "よちむ"
        default:
            "Forewarn"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "登場した時、相手の技のうち威力が最も高い技の1つを知る。"
        case (.iv, _):
            "When the Pokémon enters battle, it reveals one of an opposing Pokémon's moves with the highest power."
        default:
            name(locale: locale)
        }
    }
}
