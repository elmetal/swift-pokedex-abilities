//
//  SteamEngine.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as じょうききかん in Japanese.
    ///
    /// The localized name of this ability is `"Steam Engine"` in English and
    /// `"じょうききかん"` in Japanese.
    ///
    /// Use this value when you need to refer to Steam Engine by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.steamEngine
    /// ```
    ///
    /// The ability's raw value is `"steam-engine"`.
    static let steamEngine = SteamEngine.ability
}

enum SteamEngine: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "steam-engine")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "じょうききかん"
        default:
            "Steam Engine"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.viii ... .ix, .japanese):
            "ほのお・みずタイプの技を受けると、すばやさが6段階上がる。"
        case (.viii ... .ix, _):
            "When hit by a Fire- or Water-type move, Speed rises by six stages."
        default:
            name(locale: locale)
        }
    }
}
