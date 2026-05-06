//
//  ToxicChain.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as どくのくさり in Japanese.
    ///
    /// The localized name of this ability is `"Toxic Chain"` in English and
    /// `"どくのくさり"` in Japanese.
    ///
    /// Use this value when you need to refer to Toxic Chain by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.toxicChain
    /// ```
    ///
    /// The ability's raw value is `"toxic-chain"`.
    static let toxicChain = ToxicChain.ability
}

enum ToxicChain: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "toxic-chain")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "どくのくさり"
        default:
            "Toxic Chain"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.ix, .japanese):
            "自分の技で相手をもうどく状態にすることがある。"
        case (.ix, _):
            "Moves used by the Pokémon may badly poison the target."
        default:
            name(locale: locale)
        }
    }
}
