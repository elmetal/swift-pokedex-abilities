//
//  EffectDescription.swift
//  PokedexAbility
//  
//  Created by elmetal on 2026/05/06
//  
//

import Foundation

public extension PokemonAbility {
    struct EffectDescription: Hashable, Sendable {
        let ability: PokemonAbility

        init(ability: PokemonAbility) {
            self.ability = ability
        }
    }

    var effectDescription: EffectDescription {
        EffectDescription(ability: self)
    }
}

public extension PokemonAbility.EffectDescription {
    struct FormatStyle: Foundation.FormatStyle, Sendable {
        public typealias FormatInput = PokemonAbility.EffectDescription
        public typealias FormatOutput = String

        public var generation: PokemonGeneration
        public var locale: Locale

        public init(
            generation: PokemonGeneration = .latest,
            locale: Locale = .current
        ) {
            self.generation = generation
            self.locale = locale
        }

        public func format(_ value: PokemonAbility.EffectDescription) -> String {
            PokemonAbilityDefinitions
                .definition(for: value.ability)?
                .effectDescription(generation: generation, locale: locale)
                ?? value.ability.rawValue
        }
    }

    func formatted(
        generation: PokemonGeneration,
        locale: Locale = .current
    ) -> String {
        formatted(.init(generation: generation, locale: locale))
    }

    func formatted(_ style: FormatStyle) -> String {
        style.format(self)
    }
}
