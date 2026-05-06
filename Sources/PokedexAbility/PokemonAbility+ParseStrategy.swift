//
//  PokemonAbility+ParseStrategy.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public enum PokemonAbilityParseError: Error, Equatable, Sendable {
    case unknownAbility(String)
}

public extension PokemonAbility {
    struct ParseStrategy: Foundation.ParseStrategy, Sendable {
        public typealias ParseInput = String
        public typealias ParseOutput = PokemonAbility

        public var locale: Locale

        public init(locale: Locale = .current) {
            self.locale = locale
        }

        public func parse(_ value: String) throws -> PokemonAbility {
            guard let definition = PokemonAbilityDefinitions.all.first(where: {
                $0.matchesName(value, locale: locale)
            }) else {
                throw PokemonAbilityParseError.unknownAbility(value)
            }

            return definition.ability
        }
    }
}
