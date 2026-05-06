//
//  EffectDescription.swift
//  PokedexAbility
//  
//  Created by elmetal on 2026/05/06
//  
//


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
