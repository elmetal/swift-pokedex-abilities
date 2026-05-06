//
//  BigPecks.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as はとむね in Japanese.
    ///
    /// The localized name of this ability is `"Big Pecks"` in English and
    /// `"はとむね"` in Japanese.
    ///
    /// Use this value when you need to refer to Big Pecks by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.bigPecks
    /// ```
    ///
    /// The ability's raw value is `"big-pecks"`.
    static let bigPecks = BigPecks.ability
}

enum BigPecks: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "big-pecks")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "はとむね"
        default:
            "Big Pecks"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.v, .japanese):
            "相手にぼうぎょを下げられない。"
        case (.v, _):
            "Prevents other Pokémon from lowering the Pokémon's Defense."
        default:
            name(locale: locale)
        }
    }
}
