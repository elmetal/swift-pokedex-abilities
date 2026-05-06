//
//  CheekPouch.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let cheekPouch = CheekPouch.ability
}

enum CheekPouch: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "cheek-pouch")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ほおぶくろ"
        default:
            "Cheek Pouch"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "きのみを食べると、さらに最大HPの1/3回復する。"
        case (.vi, _):
            "When the Pokémon eats a Berry, it also restores 1/3 of its maximum HP."
        default:
            name(locale: locale)
        }
    }
}
