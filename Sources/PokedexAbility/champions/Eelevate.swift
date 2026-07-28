//
//  Eelevate.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as うなぎのぼり in Japanese.
    ///
    /// The localized name of this ability is `"Eelevate"` in English and
    /// `"うなぎのぼり"` in Japanese.
    ///
    /// Use this value when you need to refer to Eelevate by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.eelevate
    /// ```
    ///
    /// The ability's raw value is `"eelevate"`.
    static let eelevate = Eelevate.ability
}

enum Eelevate: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "eelevate")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "うなぎのぼり"
        default:
            "Eelevate"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.champions, .japanese):
            "地面にいない状態になり、じめんタイプの技、まきびし、どくびし、ねばねばネットの効果を受けない。攻撃で相手を倒すと、自分の最も高い能力が1段階上がる。"
        case (.champions, _):
            "The Pokémon floats off the ground, making it immune to Ground-type moves, as well as the Spikes, Toxic Spikes, and Sticky Web statuses. When the Pokémon knocks out a target with an attack, its highest stat is boosted by 1 stage."
        default:
            name(locale: locale)
        }
    }
}
