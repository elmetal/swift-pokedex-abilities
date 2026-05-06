//
//  Download.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let download = Download.ability
}

enum Download: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "download")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "ダウンロード"
        default:
            "Download"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iv, .japanese):
            "登場した時、相手の低い防御能力に応じてこうげきかとくこうが1段階上がる。"
        case (.iv, _):
            "When the Pokémon enters battle, Attack or Special Attack rises by one stage based on the foe's lower defensive stat."
        default:
            name(locale: locale)
        }
    }
}
