//
//  PokemonAbility+FormatStyle.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    struct FormatStyle: Foundation.FormatStyle, Sendable {
        public typealias FormatInput = PokemonAbility
        public typealias FormatOutput = String

        public var locale: Locale

        public init(locale: Locale = .current) {
            self.locale = locale
        }

        public func format(_ value: PokemonAbility) -> String {
            PokemonAbilityDefinitions.definition(for: value)?.name(locale: locale)
                ?? value.rawValue
        }
    }

    func formatted() -> String {
        formatted(.init())
    }

    func formatted(locale: Locale) -> String {
        formatted(.init(locale: locale))
    }

    func formatted(_ style: FormatStyle) -> String {
        style.format(self)
    }
}
