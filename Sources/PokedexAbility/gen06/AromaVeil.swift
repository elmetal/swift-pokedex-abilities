//
//  AromaVeil.swift
//  PokedexAbility
//
//  Created by elmetal on 2026/05/06
//
//

import Foundation

public extension PokemonAbility {
    /// The Pokémon ability known as アロマベール in Japanese.
    ///
    /// The localized name of this ability is `"Aroma Veil"` in English and
    /// `"アロマベール"` in Japanese.
    ///
    /// Use this value when you need to refer to Aroma Veil by its canonical
    /// ability identifier.
    ///
    /// ```swift
    /// let ability = PokemonAbility.aromaVeil
    /// ```
    ///
    /// The ability's raw value is `"aroma-veil"`.
    static let aromaVeil = AromaVeil.ability
}

enum AromaVeil: PokemonAbilityDefinition {
    static let ability = PokemonAbility(rawValue: "aroma-veil")

    static func name(locale: Locale) -> String {
        switch locale.language.languageCode {
        case .japanese:
            "アロマベール"
        default:
            "Aroma Veil"
        }
    }

    static func effectDescription(generation: PokemonGeneration, locale: Locale) -> String {
        switch (generation, locale.language.languageCode) {
        case (.vi ... .ix, .japanese):
            "自分と味方はメンタル系の技を受けない。"
        case (.vi ... .ix, _):
            "Protects the Pokémon and its allies from mental status moves."
        default:
            name(locale: locale)
        }
    }
}
