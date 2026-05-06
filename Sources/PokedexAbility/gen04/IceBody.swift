//
//  IceBody.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let iceBody = IceBody.ability
}

enum IceBody: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "ice-body")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "アイスボディ"
        default:
            "Ice Body"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "あられの時、毎ターン終了時に最大HPの1/16回復する。"
        case (.iv, _):
            "During hail, 1/16 of maximum HP is restored at the end of each turn."
        default:
            name(locale: locale)
        }
    }
}
