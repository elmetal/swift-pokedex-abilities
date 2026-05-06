//
//  PokemonAbilityDefinition.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

protocol PokemonAbilityDefinition: Sendable {
    static var ability: PokemonAbility { get }

    static func name(locale: Locale) -> String
    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String
}

extension PokemonAbilityDefinition {
    static func matchesName(_ value: String, locale: Locale) -> Bool {
        let input = value.trimmingCharacters(in: .whitespacesAndNewlines)

        return name(locale: locale).localizedStandardCompare(input) == .orderedSame
            || ability.rawValue.localizedStandardCompare(input) == .orderedSame
    }
}

enum PokemonAbilityDefinitions {
    static let all: [any PokemonAbilityDefinition.Type] = [
        Overgrow.self,
    ]

    static func definition(for ability: PokemonAbility) -> (any PokemonAbilityDefinition.Type)? {
        all.first { $0.ability == ability }
    }
}
