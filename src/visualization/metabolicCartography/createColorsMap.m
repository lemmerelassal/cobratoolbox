function [colors] = createColorsMap()
% Creates a Map type of structure storing colors by their name in
% capitals and giving their corresponding HTML color code.
%
% USAGE:
%
%   [colors] = createColorsMap()
%
% OUTPUTS:
%   colors:     Map structure (similar to a dictionary) containing a
%               list of colors in the string format and giving the
%               corresponding colors when called in the Map.
%
% .. Authors:
%       - N. Sompairac - Institut Curie, Paris, 24/07/2017
%       - J.Modamio (add complete list HTML colour references, 143 colours)

    keys = {'INDIANRED'; 'LIGHTCORAL'; 'SALMON'; 'DARKSALMON'; 'LIGHTSALMON'; 'CRIMSON'; 'RED'; 'FIREBRICK'; 'DARKRED'; 'PINK'; 'LIGHTPINK'; 'HOTPINK'; 'DEEPPINK'; 'MEDIUMVIOLETRED'; 'PALEVIOLETRED'; 'CORAL'; 'TOMATO'; 'ORANGERED'; 'DARKORANGE'; 'ORANGE'; 'GOLD'; 'YELLOW'; 'LIGHTYELLOW'; 'LEMONCHIFFON'; 'LIGHTGOLDENRODYELLOW'; 'PAPAYAWHIP'; 'MOCCASIN'; 'PEACHPUFF'; 'PALEGOLDENROD'; 'KHAKI'; 'DARKKHAKI'; 'LAVENDER'; 'THISTLE'; 'PLUM'; 'VIOLET'; 'ORCHID'; 'FUCHSIA'; 'MAGENTA'; 'MEDIUMORCHID'; 'MEDIUMPURPLE'; 'REBECCAPURPLE'; 'BLUEVIOLET'; 'DARKVIOLET'; 'DARKORCHID'; 'DARKMAGENTA'; 'PURPLE'; 'INDIGO'; 'SLATEBLUE'; 'DARKSLATEBLUE'; 'MEDIUMSLATEBLUE'; 'GREENYELLOW'; 'CHARTREUSE'; 'LAWNGREEN'; 'LIME'; 'LIMEGREEN'; 'PALEGREEN'; 'LIGHTGREEN'; 'MEDIUMSPRINGGREEN'; 'SPRINGGREEN'; 'MEDIUMSEAGREEN'; 'SEAGREEN'; 'FORESTGREEN'; 'GREEN'; 'DARKGREEN'; 'YELLOWGREEN'; 'OLIVEDRAB'; 'OLIVE'; 'DARKOLIVEGREEN'; 'MEDIUMAQUAMARINE'; 'DARKSEAGREEN'; 'LIGHTSEAGREEN'; 'DARKCYAN'; 'TEAL'; 'AQUA'; 'CYAN'; 'LIGHTCYAN'; 'PALETURQUOISE'; 'AQUAMARINE'; 'TURQUOISE'; 'MEDIUMTURQUOISE'; 'DARKTURQUOISE'; 'CADETBLUE'; 'STEELBLUE'; 'LIGHTSTEELBLUE'; 'POWDERBLUE'; 'LIGHTBLUE'; 'SKYBLUE'; 'LIGHTSKYBLUE'; 'DEEPSKYBLUE'; 'DODGERBLUE'; 'CORNFLOWERBLUE'; 'MEDIUMSLATEBLUE'; 'ROYALBLUE'; 'BLUE'; 'MEDIUMBLUE'; 'DARKBLUE'; 'NAVY'; 'MIDNIGHTBLUE'; 'CORNSILK'; 'BLANCHEDALMOND'; 'BISQUE'; 'NAVAJOWHITE'; 'WHEAT'; 'BURLYWOOD'; 'TAN'; 'ROSYBROWN'; 'SANDYBROWN'; 'GOLDENROD'; 'DARKGOLDENROD'; 'PERU'; 'CHOCOLATE'; 'SADDLEBROWN'; 'SIENNA'; 'BROWN'; 'MAROON'; 'WHITE'; 'SNOW'; 'HONEYDEW'; 'MINTCREAM'; 'AZURE'; 'ALICEBLUE'; 'GHOSTWHITE'; 'WHITESMOKE'; 'SEASHELL'; 'BEIGE'; 'OLDLACE'; 'FLORALWHITE'; 'IVORY'; 'ANTIQUEWHITE'; 'LINEN'; 'LAVENDERBLUSH'; 'MISTYROSE'; 'GAINSBORO'; 'LIGHTGRAY'; 'SILVER'; 'DARKGRAY'; 'GRAY'; 'DIMGRAY'; 'LIGHTSLATEGRAY'; 'SLATEGRAY'; 'DARKSLATEGRAY'; 'BLACK'};
    values = {'FFCD5C5C'; 'FFF08080'; 'FFFA8072'; 'FFE9967A'; 'FFFFA07A'; 'FFDC143C'; 'FFFF0000'; 'FFB22222'; 'FF8B0000'; 'FFFFC0CB'; 'FFFFB6C1'; 'FFFF69B4'; 'FFFF1493'; 'FFC71585'; 'FFDB7093'; 'FFFF7F50'; 'FFFF6347'; 'FFFF4500'; 'FFFF8C00'; 'FFFFA500'; 'FFFFD700'; 'FFFFFF00'; 'FFFFFFE0'; 'FFFFFACD'; 'FFFAFAD2'; 'FFFFEFD5'; 'FFFFE4B5'; 'FFFFDAB9'; 'FFEEE8AA'; 'FFF0E68C'; 'FFBDB76B'; 'FFE6E6FA'; 'FFD8BFD8'; 'FFDDA0DD'; 'FFEE82EE'; 'FFDA70D6'; 'FFFF00FF'; 'FFFF00FF'; 'FFBA55D3'; 'FF9370DB'; 'FF663399'; 'FF8A2BE2'; 'FF9400D3'; 'FF9932CC'; 'FF8B008B'; 'FF800080'; 'FF4B0082'; 'FF6A5ACD'; 'FF483D8B'; 'FF7B68EE'; 'FFADFF2F'; 'FF7FFF00'; 'FF7CFC00'; 'FF00FF00'; 'FF32CD32'; 'FF98FB98'; 'FF90EE90'; 'FF00FA9A'; 'FF00FF7F'; 'FF3CB371'; 'FF2E8B57'; 'FF228B22'; 'FF008000'; 'FF006400'; 'FF9ACD32'; 'FF6B8E23'; 'FF808000'; 'FF556B2F'; 'FF66CDAA'; 'FF8FBC8B'; 'FF20B2AA'; 'FF008B8B'; 'FF008080'; 'FF00FFFF'; 'FF00FFFF'; 'FFE0FFFF'; 'FFAFEEEE'; 'FF7FFFD4'; 'FF40E0D0'; 'FF48D1CC'; 'FF00CED1'; 'FF5F9EA0'; 'FF4682B4'; 'FFB0C4DE'; 'FFB0E0E6'; 'FFADD8E6'; 'FF87CEEB'; 'FF87CEFA'; 'FF00BFFF'; 'FF1E90FF'; 'FF6495ED'; 'FF7B68EE'; 'FF4169E1'; 'FF0000FF'; 'FF0000CD'; 'FF00008B'; 'FF000080'; 'FF191970'; 'FFFFF8DC'; 'FFFFEBCD'; 'FFFFE4C4'; 'FFFFDEAD'; 'FFF5DEB3'; 'FFDEB887'; 'FFD2B48C'; 'FFBC8F8F'; 'FFF4A460'; 'FFDAA520'; 'FFB8860B'; 'FFCD853F'; 'FFD2691E'; 'FF8B4513'; 'FFA0522D'; 'FFA52A2A'; 'FF800000'; 'FFFFFFFF'; 'FFFFFAFA'; 'FFF0FFF0'; 'FFF5FFFA'; 'FFF0FFFF'; 'FFF0F8FF'; 'FFF8F8FF'; 'FFF5F5F5'; 'FFFFF5EE'; 'FFF5F5DC'; 'FFFDF5E6'; 'FFFFFAF0'; 'FFFFFFF0'; 'FFFAEBD7'; 'FFFAF0E6'; 'FFFFF0F5'; 'FFFFE4E1'; 'FFDCDCDC'; 'FFD3D3D3'; 'FFC0C0C0'; 'FFA9A9A9'; 'FF808080'; 'FF696969'; 'FF778899'; 'FF708090'; 'FF2F4F4F'; 'FF000000'};
    colors = containers.Map(keys, values);

end
