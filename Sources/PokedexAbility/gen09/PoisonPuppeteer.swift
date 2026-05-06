//
//  PoisonPuppeteer.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    static let poisonPuppeteer = PoisonPuppeteer.ability
}

enum PoisonPuppeteer: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "poison-puppeteer")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "どくくぐつ"
        default:
            "Poison Puppeteer"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "自分の技でどく状態にした相手をこんらん状態にもする。"
        case (.ix, _):
            "Pokémon poisoned by this Pokémon's moves also become confused."
        default:
            name(locale: locale)
        }
    }
}
