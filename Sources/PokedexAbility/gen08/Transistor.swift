//
//  Transistor.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let transistor = Transistor.ability
}

enum Transistor: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "transistor")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "トランジスタ"
        default:
            "Transistor"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "でんきタイプの技の威力が1.5倍になる。"
        case (.viii, _):
            "Electric-type moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
