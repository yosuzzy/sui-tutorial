
/// Module: tutorial_2
module tutorial_2::tutorial_2 {

    use sui::object::{UID};
    public struct TranscriptObject has key {
        id: UID,
        history: u8,
        math: u8,
        literature: u8,
    }

    use sui::object::{Self};
    use si::tx_context::{Self, TxContext};
    use sui::transfer;

    public fun create_transcript_object(history: u8, math: u8, literature: u8, ctx: &mut TxContext) {
        let transriptObject = TranscriptObject {
            id: object::new(ctx),
            history,
            math,
            literature,
        };
        transfer::transfer(transcriptObject, tx_context::sender(ctx))
    }
}
