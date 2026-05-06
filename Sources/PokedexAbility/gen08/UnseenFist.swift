//
//  UnseenFist.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let unseenFist = UnseenFist.ability
}

enum UnseenFist: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "unseen-fist")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ふかしのこぶし"
        default:
            "Unseen Fist"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii, .japanese):
            "直接攻撃の技が相手の守る効果を貫通する。"
        case (.viii, _):
            "Contact moves can hit through protection moves."
        default:
            name(locale: locale)
        }
    }
}
