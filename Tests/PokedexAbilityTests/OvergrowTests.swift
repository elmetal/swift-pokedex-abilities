//
//  OvergrowTests.swift
//  PokedexAbility
//  
//  Created by elmetal on 2026/05/06
//  
//

import Foundation
import Testing
@testable import PokedexAbility

struct OvergrowTests {
    @Test func formatsAbilityName() {
        #expect(
            PokemonAbility.overgrow.formatted(locale: Locale(identifier: "ja_JP"))
                == "しんりょく"
        )
    }

    @Test func parsesAbilityName() throws {
        let strategy = PokemonAbility.ParseStrategy(locale: Locale(identifier: "ja_JP"))

        #expect(try strategy.parse("しんりょく") == .overgrow)
    }

    @Test func formatsEffectDescription() {
        #expect(
            PokemonAbility.overgrow.effectDescription.formatted(
                generation: .iii,
                locale: Locale(identifier: "ja_JP")
            )
                == "HPが1/3以下の時、くさタイプの攻撃技の威力が1.5倍になる。"
        )
    }

    @Test func formatsLatestEffectDescription() {
        #expect(
            PokemonAbility.overgrow.effectDescription.formatted(
                generation: .latest,
                locale: Locale(identifier: "ja_JP")
            )
                == "HPが1/3以下の時、くさタイプの攻撃技の威力が1.5倍になる。"
        )

        #expect(
            PokemonAbility.overgrow.effectDescription.formatted(
                .init(locale: Locale(identifier: "en_US"))
            )
                == "When HP is 1/3 or less, Grass-type attack moves have 1.5x power."
        )
    }

    @Test func formatsNameBeforeAbilityExists() {
        #expect(
            PokemonAbility.protean.effectDescription.formatted(
                generation: .v,
                locale: Locale(identifier: "en_US")
            )
                == "Protean"
        )
    }
}
