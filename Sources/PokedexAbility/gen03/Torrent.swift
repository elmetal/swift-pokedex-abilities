//
//  Torrent.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let torrent = Torrent.ability
}

enum Torrent: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "torrent")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "げきりゅう"
        default:
            "Torrent"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.iii, .japanese):
            "HPが1/3以下の時、みずタイプの攻撃技の威力が1.5倍になる。"
        case (.iii, _):
            "When HP is 1/3 or less, Water-type attack moves have 1.5x power."
        default:
            name(locale: locale)
        }
    }
}
