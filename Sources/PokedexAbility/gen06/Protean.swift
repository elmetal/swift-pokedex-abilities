//
//  Protean.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let protean = Protean.ability
}

enum Protean: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "protean")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "へんげんじざい"
        default:
            "Protean"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "技を使う前に、自分のタイプがその技と同じタイプになる。"
        case (.vi, _):
            "Before the Pokémon uses a move, it changes to that move's type."
        default:
            name(locale: locale)
        }
    }
}
