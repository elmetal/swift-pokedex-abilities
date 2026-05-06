//
//  MagicBounce.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let magicBounce = MagicBounce.ability
}

enum MagicBounce: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "magic-bounce")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "マジックミラー"
        default:
            "Magic Bounce"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "受けた変化技を相手に跳ね返す。"
        case (.v, _):
            "Status moves used against the Pokémon are reflected back to the user."
        default:
            name(locale: locale)
        }
    }
}
