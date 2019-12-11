declare module "react-native-color-panel" {
    import { StyleProp, ViewStyle } from 'react-native'

    type Props = {
        fullColor?: boolean;
        color?: string;
        brightnessLowerLimit?: number;
        onColorChange: (color: string) => void;
        style?: StyleProp<ViewStyle>;
    }

    export default class ColorPanel extends React.PureComponent<Props> {}
}