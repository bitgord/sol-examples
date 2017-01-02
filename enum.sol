contract test {
    enum ActionChoices { GoLeft, SoRight, GoStraight, SitStill }
    ActionChoices choice;
    Actionchoices constant defaultChoice = ActionChoices.GoStraight;

    function setGoStraight() {
        choice = ActionChoices.GoStraight;

        // Since enum types are not part of the ABI, the signature of "getChoice"
        // will automatically be changed to "getChoice() returns (uint8)"
        // for all matters external to Solidity. The integet types used is just
        // large enough to hold all enum values, i.e if you have more values,
        // "uint16" will be used and so on.
        function getChoice() returns (ActionChoices) {
            return  choice;
        }

        function getDefaultChoice() returns (uint) {
            return uint(defaultChoice);
        }
    }
}