//
//  AromaVeil.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let aromaVeil = AromaVeil.ability
}

enum AromaVeil: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "aroma-veil")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "アロマベール"
        default:
            "Aroma Veil"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi, .japanese):
            "自分と味方はメンタル系の技を受けない。"
        case (.vi, _):
            "Protects the Pokémon and its allies from mental status moves."
        default:
            name(locale: locale)
        }
    }
}
