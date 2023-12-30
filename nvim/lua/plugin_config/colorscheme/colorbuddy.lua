-- Name: blacklotus
-- Author: kylfp
-- Maintainer: kylfp
-- License MIT

local Color, c, Group, g, s = require('colorbuddy').setup()
local b = s.bold
local i = s.italic
local n = s.inverse
local uc = s.undercurl
local ul = s.underline
local r = s.reverse
local sto = s.standout
local no = s.NONE
local v = vim
------------
-- Colors --
------------
Color.new('bg',    '#121212')
Color.new('bg2',   '#191919')
Color.new('bg3',   '#2a2a2a')
Color.new('bg4',   '#414141')

Color.new('fg',  '#c8c8c8')
Color.new('fg2', '#bebebe')
Color.new('fg3', '#aaaaaa')
Color.new('fg4', '#969696')

Color.new('black',   '#302e31')
Color.new('red',     '#a55377')
Color.new('green',   '#5f9a6c')
Color.new('yellow',  '#d9c793')
Color.new('orange',  '#cc9964')
Color.new('blue',    '#2f88ff')
Color.new('magenta', '#8853c7')
Color.new('cyan',    '#6dabd6')
Color.new('white',   '#dcefff')

Color.new('dark_black',   '#211f21')
Color.new('dark_red',     '#7b3e59')
Color.new('dark_green',   '#798347')
Color.new('dark_yellow',  '#ae9f76')
Color.new('dark_orange',  '#cc873f')
Color.new('dark_blue',    '#3f6cad')
Color.new('dark_magenta', '#553976')
Color.new('dark_cyan',    '#416680')
Color.new('dark_white',   '#afc4e3')

local italics = (function()
    if vim.g.onebuddy_disable_italics ~= true then
        return  i
    else
        return  no
    end
end)()

----------------------
-- Vim Editor Color --
----------------------
Group.new('Normal',       c.fg,           c.bg2,          no)
Group.new('bold',         c.none,         c.none,         b)
Group.new('ColorColumn',  c.none,         c.bg3,          no)
Group.new('Conceal',      c.fg4,          c.bg2,          no)
Group.new('Cursor',       c.none,         c.cyan,         no)
Group.new('CursorIM',     c.none,         c.none,         no)
Group.new('CursorColumn', c.none,         c.bg3,          no)
Group.new('CursorLine',   c.none,         c.bg3,          no)
Group.new('Directory',    c.blue,         c.none,         no)
Group.new('ErrorMsg',     c.red,          c.none,         no)
Group.new('VertSplit',    c.blue,          c.none,         no)
Group.new('Folded',       c.fg3,          c.none,         no)
Group.new('FoldColumn',   c.fg3,          c.bg2,          no)
Group.new('IncSearch',    c.bg2,          c.blue,         no)
Group.new('LineNr',       c.dark_magenta, c.none,         no)
Group.new('CursorLineNr', c.blue,         c.bg2,          no)
Group.new('MatchParen',   c.red,          c.bg2,          b)
Group.new('Italic',       c.none,         c.none,         i)
Group.new('ModeMsg',      c.fg,           c.none,         no)
Group.new('MoreMsg',      c.fg,           c.none,         no)
Group.new('NonText',      c.fg3,          c.none,         no)
Group.new('bg3',          c.none,         c.bg3,          no)
Group.new('bg3Sel',       c.none,         c.fg4,          no)
Group.new('bg3Sbar',      c.none,         c.fg3,          no)
Group.new('bg3Thumb',     c.none,         c.fg,           no)
Group.new('Question',     c.blue,         c.none,         no)
Group.new('Search',       c.fg3,          c.yellow,       no)
Group.new('SpecialKey',   c.dark_white,   c.none,         no)
Group.new('Whitespace',   c.dark_white,   c.none,         no)
Group.new('StatusLine',   c.fg,           c.dark_blue,    no)
Group.new('StatusLineNC', c.fg3,          c.dark_blue,    no)
Group.new('TabLine',      c.dark_magenta, c.bg3,          no)
Group.new('TabLineFill',  c.bg2,          c.none,         no)
Group.new('TabLineSel',   c.blue,         c.bg4,          no)
Group.new('Title',        c.fg,           c.none,         b)
Group.new('Visual',       c.fg2,          c.dark_magenta, no)
Group.new('VisualNOS',    c.fg2,          c.dark_magenta, no)
Group.new('WarningMsg',   c.red,          c.none,         no)
Group.new('TooLong',      c.red,          c.none,         no)
Group.new('WildMenu',     c.fg,           c.fg3,          no)
Group.new('SignColumn',   c.none,         c.none,         no)
Group.new('Special',      c.blue,         c.none,         no)

---------------------------
-- Vim Help Highlighting --
---------------------------
Group.new('helpCommand',      c.yellow,  c.none,  no)
Group.new('helpExample',      c.yellow,  c.none,  no)
Group.new('helpHeader',       c.fg,      c.none,  b)
Group.new('helpSectionDelim', c.fg3,     c.none,  no)

----------------------------------
-- Standard Syntax Highlighting --
----------------------------------
Group.new('Comment',        c.fg3,      c.none, italics)
Group.new('Constant',       c.green,    c.none, no)
Group.new('String',         c.green,    c.none, no)
Group.new('Character',      c.green,    c.none, no)
Group.new('Number',         c.orange,   c.none, no)
Group.new('Boolean',        c.orange,   c.none, no)
Group.new('Float',          c.orange,   c.none, no)
Group.new('Identifier',     c.red,      c.none, no)
Group.new('Function',       c.blue,     c.none, no)
Group.new('Statement',      c.magenta,  c.none, no)
Group.new('Conditional',    c.magenta,  c.none, no)
Group.new('Repeat',         c.magenta,  c.none, no)
Group.new('Label',          c.magenta,  c.none, no)
Group.new('Operator',       c.cyan,     c.none, no)
Group.new('Keyword',        c.red,      c.none, no)
Group.new('Exception',      c.magenta,  c.none, no)
Group.new('PreProc',        c.blue,     c.none, no)
Group.new('Include',        c.magenta,  c.none, no)
Group.new('Define',         c.magenta,  c.none, no)
Group.new('Macro',          c.magenta,  c.none, no)
Group.new('PreCondit',      c.blue,     c.none, no)
Group.new('Type',           c.yellow,   c.none, no)
Group.new('StorageClass',   c.blue,     c.none, no)
Group.new('Structure',      c.blue,     c.none, no)
Group.new('Typedef',        c.blue,     c.none, no)
Group.new('Special',        c.blue,     c.none, no)
Group.new('SpecialChar',    c.none,     c.none, no)
Group.new('Tag',            c.none,     c.none, no)
Group.new('Delimiter',      c.none,     c.none, no)
Group.new('SpecialComment', c.none,     c.none, no)
Group.new('Debug',          c.none,     c.none, no)
Group.new('Underlined',     c.none,     c.none, ul)
Group.new('Ignore',         c.none,     c.none, no)
Group.new('Error',          c.red,      c.fg3,  b)
Group.new('Todo',           c.magenta,  c.fg3,  no)

-----------------------
-- Diff Highlighting --
-----------------------
Group.new('DiffAdd',     c.green,  c.dark_white, no)
Group.new('DiffChange',  c.orange, c.dark_white, no)
Group.new('DiffDelete',  c.red,    c.dark_white, no)
Group.new('DiffText',    c.blue,   c.dark_white, no)
Group.new('DiffAdded',   c.green,  c.dark_white, no)
Group.new('DiffFile',    c.red,    c.dark_white, no)
Group.new('DiffNewFile', c.green,  c.dark_white, no)
Group.new('DiffLine',    c.blue,   c.dark_white, no)
Group.new('DiffRemoved', c.red,    c.dark_white, no)

---------------------------
-- Filetype Highlighting --
---------------------------

-- Asciidoc
Group.new('asciidocListingBlock', c.fg2, c.none, no)

-- C/C++ highlighting
Group.new('cInclude',           c.magenta,      c.none,  no)
Group.new('cPreCondit',         c.magenta,      c.none,  no)
Group.new('cPreConditMatch',    c.magenta,      c.none,  no)
Group.new('cType',              c.magenta,      c.none,  no)
Group.new('cStorageClass',      c.magenta,      c.none,  no)
Group.new('cStructure',         c.magenta,      c.none,  no)
Group.new('cOperator',          c.magenta,      c.none,  no)
Group.new('cStatement',         c.magenta,      c.none,  no)
Group.new('cTODO',              c.magenta,      c.none,  no)
Group.new('cConstant',          c.orange,       c.none,  no)
Group.new('cSpecial',           c.dark_magenta, c.none,  no)
Group.new('cSpecialCharacter',  c.dark_magenta, c.none,  no)
Group.new('cString',            c.green,        c.none,  no)
Group.new('cppType',            c.magenta,      c.none,  no)
Group.new('cppStorageClass',    c.magenta,      c.none,  no)
Group.new('cppStructure',       c.magenta,      c.none,  no)
Group.new('cppModifier',        c.magenta,      c.none,  no)
Group.new('cppOperator',        c.magenta,      c.none,  no)
Group.new('cppAccess',          c.magenta,      c.none,  no)
Group.new('cppStatement',       c.magenta,      c.none,  no)
Group.new('cppConstant',        c.red,          c.none,  no)
Group.new('cCppString',         c.green,        c.none,  no)

-- Cucumber
Group.new('cucumberGiven',           c.blue,    c.none,  no)
Group.new('cucumberWhen',            c.blue,    c.none,  no)
Group.new('cucumberWhenAnd',         c.blue,    c.none,  no)
Group.new('cucumberThen',            c.blue,    c.none,  no)
Group.new('cucumberThenAnd',         c.blue,    c.none,  no)
Group.new('cucumberUnparsed',        c.orange,  c.none,  no)
Group.new('cucumberFeature',         c.red,     c.none,  b)
Group.new('cucumberBackground',      c.magenta, c.none,  b)
Group.new('cucumberScenario',        c.magenta, c.none,  b)
Group.new('cucumberScenarioOutline', c.magenta, c.none,  b)
Group.new('cucumberTags',            c.fg3,     c.none,  b)
Group.new('cucumberDelimiter',       c.fg3,     c.none,  b)

-- CSS/Sass
Group.new('cssAttrComma',         c.magenta,      c.none,  no)
Group.new('cssAttributeSelector', c.green,        c.none,  no)
Group.new('cssBraces',            c.fg2,          c.none,  no)
Group.new('cssClassName',         c.orange,       c.none,  no)
Group.new('cssClassNameDot',      c.orange,       c.none,  no)
Group.new('cssDefinition',        c.magenta,      c.none,  no)
Group.new('cssFontAttr',          c.orange,       c.none,  no)
Group.new('cssFontDescriptor',    c.magenta,      c.none,  no)
Group.new('cssFunctionName',      c.blue,         c.none,  no)
Group.new('cssIdentifier',        c.blue,         c.none,  no)
Group.new('cssImportant',         c.magenta,      c.none,  no)
Group.new('cssInclude',           c.fg,           c.none,  no)
Group.new('cssIncludeKeyword',    c.magenta,      c.none,  no)
Group.new('cssMediaType',         c.orange,       c.none,  no)
Group.new('cssProp',              c.dark_magenta, c.none,  no)
Group.new('cssPseudoClassId',     c.orange,       c.none,  no)
Group.new('cssSelectorOp',        c.magenta,      c.none,  no)
Group.new('cssSelectorOp2',       c.magenta,      c.none,  no)
Group.new('cssStringQ',           c.green,        c.none,  no)
Group.new('cssStringQQ',          c.green,        c.none,  no)
Group.new('cssTagName',           c.red,          c.none,  no)
Group.new('cssAttr',              c.orange,       c.none,  no)
Group.new('sassAmpersand',        c.red,          c.none,  no)
Group.new('sassClass',            c.yellow,       c.none,  no)
Group.new('sassControl',          c.magenta,      c.none,  no)
Group.new('sassExtend',           c.magenta,      c.none,  no)
Group.new('sassFor',              c.fg,           c.none,  no)
Group.new('sassProperty',         c.dark_magenta, c.none,  no)
Group.new('sassFunction',         c.dark_magenta, c.none,  no)
Group.new('sassId',               c.blue,         c.none,  no)
Group.new('sassInclude',          c.magenta,      c.none,  no)
Group.new('sassMedia',            c.magenta,      c.none,  no)
Group.new('sassMediaOperators',   c.fg,           c.none,  no)
Group.new('sassMixin',            c.magenta,      c.none,  no)
Group.new('sassMixinName',        c.blue,         c.none,  no)
Group.new('sassMixing',           c.magenta,      c.none,  no)
Group.new('scssSelectorName',     c.yellow,       c.none,  no)

-- Elixir highlighting

Group.new('elixirModuleDefine',      g.Define,       g.Define, g.Define)
Group.new('elixirAlias',             c.yellow,       c.none,   no)
Group.new('elixirAtom',              c.dark_magenta, c.none,   no)
Group.new('elixirBlockDefinition',   c.magenta,      c.none,   no)
Group.new('elixirModuleDeclaration', c.orange,       c.none,   no)
Group.new('elixirInclude',           c.red,          c.none,   no)
Group.new('elixirOperator',          c.orange,       c.none,   no)

-- Git and git related plugins
Group.new('gitcommitComment',        c.fg3,                    c.none,                   no)
Group.new('gitcommitUnmerged',       c.green,                  c.none,                   no)
Group.new('gitcommitOnBranch',       c.none,                   c.none,                   no)
Group.new('gitcommitBranch',         c.magenta,                c.none,                   no)
Group.new('gitcommitDiscardedType',  c.red,                    c.none,                   no)
Group.new('gitcommitSelectedType',   c.green,                  c.none,                   no)
Group.new('gitcommitHeader',         c.none,                   c.none,                   no)
Group.new('gitcommitUntrackedFile',  c.dark_magenta,           c.none,                   no)
Group.new('gitcommitDiscardedFile',  c.red,                    c.none,                   no)
Group.new('gitcommitSelectedFile',   c.green,                  c.none,                   no)
Group.new('gitcommitUnmergedFile',   c.yellow,                 c.none,                   no)
Group.new('gitcommitFile',           c.none,                   c.none,                   no)
Group.new('gitcommitNoBranch',       g.gitcommitBranch,        g.gitcommitBranch,        g.gitcommitBranch)
Group.new('gitcommitUntracked',      g.gitcommitComment,       g.gitcommitComment,       g.gitcommitComment)
Group.new('gitcommitDiscarded',      g.gitcommitComment,       g.gitcommitComment,       g.gitcommitComment)
Group.new('gitcommitDiscardedArrow', g.gitcommitDiscardedFile, g.gitcommitDiscardedFile, g.gitcommitDiscardedFile)
Group.new('gitcommitSelectedArrow',  g.gitcommitSelectedFile,  g.gitcommitSelectedFile,  g.gitcommitSelectedFile)
Group.new('gitcommitUnmergedArrow',  g.gitcommitUnmergedFile,  g.gitcommitUnmergedFile,  g.gitcommitUnmergedFile)
Group.new('SignifySignAdd',          c.green,                  c.none,                   no)
Group.new('SignifySignChange',       c.yellow,                 c.none,                   no)
Group.new('SignifySignDelete',       c.red,                    c.none,                   no)
Group.new('GitGutterAdd',            g.SignifySignAdd,         g.SignifySignAdd,         g.SignifySignAdd)
Group.new('GitGutterChange',         g.SignifySignChange,      g.SignifySignChange,      g.SignifySignChange)
Group.new('GitGutterDelete',         g.SignifySignDelete,      g.SignifySignDelete,      g.SignifySignDelete)
Group.new('diffAdded',               c.green,                  c.none,                   no)
Group.new('diffRemoved',             c.red,                    c.none,                   no)

-- Go
Group.new('goDeclaration',  c.magenta,      c.none, no)
Group.new('goField',        c.red,          c.none, no)
Group.new('goMethod',       c.dark_magenta, c.none, no)
Group.new('goType',         c.magenta,      c.none, no)
Group.new('goUnsignedInts', c.dark_magenta, c.none, no)

-- Haskell highlighting
Group.new('haskellDeclKeyword',    c.blue,         c.none, no)
Group.new('haskellType',           c.green,        c.none, no)
Group.new('haskellWhere',          c.red,          c.none, no)
Group.new('haskellImportKeywords', c.blue,         c.none, no)
Group.new('haskellOperators',      c.red,          c.none, no)
Group.new('haskellDelimiter',      c.blue,         c.none, no)
Group.new('haskellIdentifier',     c.orange,       c.none, no)
Group.new('haskellKeyword',        c.red,          c.none, no)
Group.new('haskellNumber',         c.dark_magenta, c.none, no)
Group.new('haskellString',         c.dark_magenta, c.none, no)

-- HTML
Group.new('htmlArg',            c.orange, c.none, no)
Group.new('htmlTagName',        c.red,    c.none, no)
Group.new('htmlTagN',           c.red,    c.none, no)
Group.new('htmlSpecialTagName', c.red,    c.none, no)
Group.new('htmlTag',            c.fg2,    c.none, no)
Group.new('htmlEndTag',         c.fg2,    c.none, no)
Group.new('MatchTag',           c.red,    c.bg2,  ul + b)

-- JavaScript
Group.new('coffeeString',           c.green,        c.none, no)
Group.new('javaScriptBraces',       c.fg2,          c.none, no)
Group.new('javaScriptFunction',     c.magenta,      c.none, no)
Group.new('javaScriptIdentifier',   c.magenta,      c.none, no)
Group.new('javaScriptNull',         c.orange,       c.none, no)
Group.new('javaScriptNumber',       c.orange,       c.none, no)
Group.new('javaScriptRequire',      c.dark_magenta, c.none, no)
Group.new('javaScriptReserved',     c.magenta,      c.none, no)
-- httpc.//github.com/pangloss/vim-javascript
Group.new('jsArrowFunction',        c.magenta,      c.none, no)
Group.new('jsBraces',               c.fg2,          c.none, no)
Group.new('jsClassBraces',          c.fg2,          c.none, no)
Group.new('jsClassKeywords',        c.magenta,      c.none, no)
Group.new('jsDocParam',             c.blue,         c.none, no)
Group.new('jsDocTags',              c.magenta,      c.none, no)
Group.new('jsFuncBraces',           c.fg2,          c.none, no)
Group.new('jsFuncCall',             c.blue,         c.none, no)
Group.new('jsFuncParens',           c.fg2,          c.none, no)
Group.new('jsFunction',             c.magenta,      c.none, no)
Group.new('jsGlobalObjects',        c.yellow,       c.none, no)
Group.new('jsModuleWords',          c.magenta,      c.none, no)
Group.new('jsModules',              c.magenta,      c.none, no)
Group.new('jsNoise',                c.fg2,          c.none, no)
Group.new('jsNull',                 c.orange,       c.none, no)
Group.new('jsOperator',             c.magenta,      c.none, no)
Group.new('jsParens',               c.fg2,          c.none, no)
Group.new('jsStorageClass',         c.magenta,      c.none, no)
Group.new('jsTemplateBraces',       c.dark_red,     c.none, no)
Group.new('jsTemplateVar',          c.green,        c.none, no)
Group.new('jsThis',                 c.red,          c.none, no)
Group.new('jsUndefined',            c.orange,       c.none, no)
Group.new('jsObjectValue',          c.blue,         c.none, no)
Group.new('jsObjectKey',            c.dark_magenta, c.none, no)
Group.new('jsReturn',               c.magenta,      c.none, no)
-- httpc.//github.com/othree/yajs.vim
Group.new('javascriptArrowFunc',    c.magenta,      c.none, no)
Group.new('javascriptClassExtends', c.magenta,      c.none, no)
Group.new('javascriptClassKeyword', c.magenta,      c.none, no)
Group.new('javascriptDocNotation',  c.magenta,      c.none, no)
Group.new('javascriptDocParamName', c.blue,         c.none, no)
Group.new('javascriptDocTags',      c.magenta,      c.none, no)
Group.new('javascriptEndColons',    c.fg3,          c.none, no)
Group.new('javascriptExport',       c.magenta,      c.none, no)
Group.new('javascriptFuncArg',      c.fg,           c.none, no)
Group.new('javascriptFuncKeyword',  c.magenta,      c.none, no)
Group.new('javascriptIdentifier',   c.red,          c.none, no)
Group.new('javascriptImport',       c.magenta,      c.none, no)
Group.new('javascriptObjectLabel',  c.fg,           c.none, no)
Group.new('javascriptOpSymbol',     c.dark_magenta, c.none, no)
Group.new('javascriptOpSymbols',    c.dark_magenta, c.none, no)
Group.new('javascriptPropertyName', c.green,        c.none, no)
Group.new('javascriptTemplateSB',   c.dark_red,     c.none, no)
Group.new('javascriptVariable',     c.magenta,      c.none, no)

-- JSON
Group.new('jsonCommentError',       c.fg,      c.none, no)
Group.new('jsonKeyword',            c.red,     c.none, no)
Group.new('jsonQuote',              c.fg3,     c.none, no)
Group.new('jsonTrailingCommaError', c.red,     c.none, r)
Group.new('jsonMissingCommaError',  c.red,     c.none, r)
Group.new('jsonNoQuotesError',      c.red,     c.none, r)
Group.new('jsonNumError',           c.red,     c.none, r)
Group.new('jsonString',             c.green,   c.none, no)
Group.new('jsonBoolean',            c.magenta, c.none, no)
Group.new('jsonNumber',             c.orange,  c.none, no)
Group.new('jsonStringSQError',      c.red,     c.none, r)
Group.new('jsonSemicolonError',     c.red,     c.none, r)

-- Markdown
Group.new('markdownUrl',              c.fg3,      c.none, no)
Group.new('markdownBold',             c.orange,   c.none, b)
Group.new('markdownItalic',           c.orange,   c.none, b)
Group.new('markdownCode',             c.green,    c.none, no)
Group.new('markdownCodeBlock',        c.red,      c.none, no)
Group.new('markdownCodeDelimiter',    c.green,    c.none, no)
Group.new('markdownHeadingDelimiter', c.dark_red, c.none, no)
Group.new('markdownH1',               c.red,      c.none, no)
Group.new('markdownH2',               c.red,      c.none, no)
Group.new('markdownH3',               c.red,      c.none, no)
Group.new('markdownH3',               c.red,      c.none, no)
Group.new('markdownH4',               c.red,      c.none, no)
Group.new('markdownH5',               c.red,      c.none, no)
Group.new('markdownH6',               c.red,      c.none, no)
Group.new('markdownListMarker',       c.red,      c.none, no)

-- PHP
Group.new('phpClass',        c.yellow,  c.none, no)
Group.new('phpFunction',     c.blue,    c.none, no)
Group.new('phpFunctions',    c.blue,    c.none, no)
Group.new('phpInclude',      c.magenta, c.none, no)
Group.new('phpKeyword',      c.magenta, c.none, no)
Group.new('phpParent',       c.fg3,     c.none, no)
Group.new('phpType',         c.magenta, c.none, no)
Group.new('phpSuperGlobals', c.red,     c.none, no)

-- Pug (Formerly Jade)
Group.new('pugAttributesDelimiter', c.orange, c.none, no)
Group.new('pugClass',               c.orange, c.none, no)
Group.new('pugDocType',             c.fg3,    c.none, italics)
Group.new('pugTag',                 c.red,    c.none, no)

-- PureScript
Group.new('purescriptKeyword',     c.magenta, c.none, no)
Group.new('purescriptModuleName',  c.fg,      c.none, no)
Group.new('purescriptIdentifier',  c.fg,      c.none, no)
Group.new('purescriptType',        c.yellow,  c.none, no)
Group.new('purescriptTypeVar',     c.red,     c.none, no)
Group.new('purescriptConstructor', c.red,     c.none, no)
Group.new('purescriptOperator',    c.fg,      c.none, no)

-- Python
Group.new('pythonImport',          c.magenta,      c.none, no)
Group.new('pythonBuiltin',         c.dark_magenta, c.none, no)
Group.new('pythonStatement',       c.magenta,      c.none, no)
Group.new('pythonParam',           c.orange,       c.none, no)
Group.new('pythonEscape',          c.red,          c.none, no)
Group.new('pythonSelf',            c.fg2,          c.none, italics)
Group.new('pythonClass',           c.blue,         c.none, no)
Group.new('pythonOperator',        c.magenta,      c.none, no)
Group.new('pythonEscape',          c.red,          c.none, no)
Group.new('pythonFunction',        c.blue,         c.none, no)
Group.new('pythonKeyword',         c.blue,         c.none, no)
Group.new('pythonModule',          c.magenta,      c.none, no)
Group.new('pythonStringDelimiter', c.green,        c.none, no)
Group.new('pythonSymbol',          c.dark_magenta, c.none, no)

-- Ruby 
Group.new('rubyBlock',                     c.magenta,      c.none, no)
Group.new('rubyBlockParameter',            c.red,          c.none, no)
Group.new('rubyBlockParameterList',        c.red,          c.none, no)
Group.new('rubyCapitalizedMethod',         c.magenta,      c.none, no)
Group.new('rubyClass',                     c.magenta,      c.none, no)
Group.new('rubyConstant',                  c.yellow,       c.none, no)
Group.new('rubyControl',                   c.magenta,      c.none, no)
Group.new('rubyDefine',                    c.magenta,      c.none, no)
Group.new('rubyEscape',                    c.red,          c.none, no)
Group.new('rubyFunction',                  c.blue,         c.none, no)
Group.new('rubyGlobalVariable',            c.red,          c.none, no)
Group.new('rubyInclude',                   c.blue,         c.none, no)
Group.new('rubyIncluderubyGlobalVariable', c.red,          c.none, no)
Group.new('rubyInstanceVariable',          c.red,          c.none, no)
Group.new('rubyInterpolation',             c.dark_magenta, c.none, no)
Group.new('rubyInterpolationDelimiter',    c.red,          c.none, no)
Group.new('rubyKeyword',                   c.blue,         c.none, no)
Group.new('rubyModule',                    c.magenta,      c.none, no)
Group.new('rubyPseudoVariable',            c.red,          c.none, no)
Group.new('rubyRegexp',                    c.dark_magenta, c.none, no)
Group.new('rubyRegexpDelimiter',           c.dark_magenta, c.none, no)
Group.new('rubyStringDelimiter',           c.green,        c.none, no)
Group.new('rubySymbol',                    c.dark_magenta, c.none, no)

-- Spelling
Group.new('SpellBad',   c.fg3, c.none, uc)
Group.new('SpellLocal', c.fg3, c.none, uc)
Group.new('SpellCap',   c.fg3, c.none, uc)
Group.new('SpellRare',  c.fg3, c.none, uc)

-- Vim
Group.new('vimCommand',      c.magenta,      c.none, no)
Group.new('vimCommentTitle', c.fg3,          c.none, b)
Group.new('vimFunction',     c.dark_magenta, c.none, no)
Group.new('vimFuncName',     c.magenta,      c.none, no)
Group.new('vimHighlight',    c.blue,         c.none, no)
Group.new('vimLineComment',  c.fg3,          c.none, italics)
Group.new('vimParenSep',     c.fg2,          c.none, no)
Group.new('vimSep',          c.fg2,          c.none, no)
Group.new('vimUserFunc',     c.dark_magenta, c.none, no)
Group.new('vimVar',          c.red,          c.none, no)

-- XML
Group.new('xmlAttrib',  c.yellow, c.none, no)
Group.new('xmlEndTag',  c.red,    c.none, no)
Group.new('xmlTag',     c.red,    c.none, no)
Group.new('xmlTagName', c.red,    c.none, no)

-- ZSH
Group.new('zshCommands',    c.fg,           c.none, no)
Group.new('zshDeref',       c.red,          c.none, no)
Group.new('zshShortDeref',  c.red,          c.none, no)
Group.new('zshFunction',    c.dark_magenta, c.none, no)
Group.new('zshKeyword',     c.magenta,      c.none, no)
Group.new('zshSubst',       c.red,          c.none, no)
Group.new('zshSubstDelim',  c.fg3,          c.none, no)
Group.new('zshTypes',       c.magenta,      c.none, no)
Group.new('zshVariableDef', c.orange,       c.none, no)

-- Rust
Group.new('rustExternCrate',          c.red,   c.none, b)
Group.new('rustIdentifier',           c.blue,  c.none, no)
Group.new('rustDeriveTrait',          c.green, c.none, no)
Group.new('SpecialComment',           c.fg3,   c.none, no)
Group.new('rustCommentLine',          c.fg3,   c.none, no)
Group.new('rustCommentLineDoc',       c.fg3,   c.none, no)
Group.new('rustCommentLineDocError',  c.fg3,   c.none, no)
Group.new('rustCommentBlock',         c.fg3,   c.none, no)
Group.new('rustCommentBlockDoc',      c.fg3,   c.none, no)
Group.new('rustCommentBlockDocError', c.fg3,   c.none, no)

-- Man
Group.new('manTitle',  g.String, g.String, g.String)
Group.new('manFooter', c.fg3,    c.none,   no)

-------------------------
-- Plugin Highlighting --
-------------------------

-- ALE (Asynchronous Lint Engine)
Group.new('ALEWarningSign', c.yellow, c.none, no)
Group.new('ALEErrorSign',   c.red,    c.none, no)

-- Neovim NERDTree Background fix
Group.new('NERDTreeFile', c.fg, c.none, no)

-- Coc.nvim Floating Background fix
Group.new('CocFloating', c.fg, c.none, no)
Group.new('NormalFloat', c.fg, c.bg3,  no)
-----------------------------
--     LSP Highlighting    --
-----------------------------
Group.new('LspDiagnosticsDefaultError',           c.red,          c.none,  no)
Group.new('LspDiagnosticsDefaultWarning',         c.yellow,       c.none,  no)
Group.new('LspDiagnosticsDefaultInformation',     c.dark_magenta, c.none,  no)
Group.new('LspDiagnosticsDefaultHint',            c.green,        c.none,  no)
Group.new('LspDiagnosticsVirtualTextError',       c.red,          c.none,  no)
Group.new('LspDiagnosticsVirtualTextWarning',     c.yellow,       c.none,  no)
Group.new('LspDiagnosticsVirtualTextInformation', c.dark_magenta, c.none,  no)
Group.new('LspDiagnosticsVirtualTextHint',        c.green,        c.none,  no)
Group.new('LspDiagnosticsUnderlineError',         c.red,          c.none,  ul)
Group.new('LspDiagnosticsUnderlineWarning',       c.yellow,       c.none,  ul)
Group.new('LspDiagnosticsUnderlineInformation',   c.dark_magenta, c.none,  ul)
Group.new('LspDiagnosticsUnderlineHint',          c.green,        c.none,  ul)
Group.new('LspDiagnosticsFloatingError',          c.red,          g.bg3,   ul)
Group.new('LspDiagnosticsFloatingWarning',        c.yellow,       g.bg3,   ul)
Group.new('LspDiagnosticsFloatingInformation',    c.dark_magenta, g.bg3,   ul)
Group.new('LspDiagnosticsFloatingHint',           c.green,        g.bg3,   ul)
Group.new('LspDiagnosticsSignError',              c.red,          c.none,  no)
Group.new('LspDiagnosticsSignWarning',            c.yellow,       c.none,  no)
Group.new('LspDiagnosticsSignInformation',        c.dark_magenta, c.none,  no)
Group.new('LspDiagnosticsSignHint',               c.green,        c.none,  no)

-----------------------------
--     CMP Highlighting    --
-----------------------------
Group.new('CmpNormal',    c.fg, c.bg2, no)
Group.new('CmpDocNormal', c.fg, c.bg2, no)

-----------------------------
--     BarBar Support      --
-----------------------------
-- In Progress
Group.new('BufferAlternate',          c.fg,   c.bg, no)
Group.new('BufferAlternateSign',      c.fg,   c.bg, no)
Group.new('BufferAlternateSignRight', c.fg,   c.bg, no)

Group.new('BufferCurrent',          c.blue, c.bg4, no)
Group.new('BufferCurrentSign',      c.bg,   c.bg4, no)
Group.new('BufferCurrentSignRight', c.bg2,  c.bg4, no)
Group.new('BufferCurrentIcon',      c.none, c.bg4, no)


Group.new('BufferInactive',           c.fg,   c.bg, no)
Group.new('BufferAlternateSign',      c.fg,   c.bg, no)
Group.new('BufferAlternateSignRight', c.fg,   c.bg, no)

Group.new('BufferVisible',            c.fg,   c.bg, no)
Group.new('BufferAlternateSign',      c.fg,   c.bg, no)
Group.new('BufferAlternateSignRight', c.fg,   c.bg, no)

-----------------------------
-- TreeSitter Highlighting --
-----------------------------
Group.new('TSAnnotation',         c.yellow,       c.none, no)
Group.new('TSAttribute',          c.dark_magenta, c.none, no)
Group.new('TSBoolean',            c.orange,       c.none, no)
Group.new('TSCharacter',          c.green,        c.none, no)
Group.new('TSConditional',        c.dark_blue,    c.none, no)
Group.new('TSConstant',           c.blue,         c.none, no)
Group.new('TSConstBuiltin',       c.orange,       c.none, no)
Group.new('TSConstMacro',         c.dark_magenta, c.none, no)
Group.new('TSConstructor',        c.dark_magenta, c.none, no)
Group.new('TSEmphasis',           c.yellow,       c.none, no)
Group.new('TSError',              c.red,          c.none, no)
Group.new('TSException',          c.dark_blue,    c.none, no)
Group.new('TSField',              c.red,          c.none, no)
Group.new('TSFloat',              c.green,        c.none, no)
Group.new('TSFunction',           c.blue,         c.none, no)
Group.new('TSFuncBuiltin',        c.blue,         c.none, no)
Group.new('TSFuncMacro',          c.yellow,       c.none, no)
Group.new('TSInclude',            c.dark_blue,    c.none, no)
Group.new('TSKeyword',            c.dark_blue,    c.none, no)
Group.new('TSKeywordFunction',    c.dark_blue,    c.none, no)
Group.new('TSKeywordOperator',    c.dark_blue,    c.none, no)
Group.new('TSLabel',              c.blue,         c.none, no)
Group.new('TSLiteral',            c.yellow,       c.none, no)
Group.new('TSMethod',             c.blue,         c.none, no)
Group.new('TSNamespace',          c.dark_blue,    c.none, no)
Group.new('TSNumber',             c.orange,       c.none, no)
Group.new('TSOperator',           c.fg,           c.none, no)
Group.new('TSParameter',          c.dark_magenta, c.none, no)
Group.new('TSParameterReference', c.dark_magenta, c.none, no)
Group.new('TSProperty',           c.yellow,       c.none, no)
Group.new('TSPunctBracket',       c.fg,           c.none, no)
Group.new('TSPunctDelimiter',     c.fg,           c.none, no)
Group.new('TSPunctSpecial',       c.fg,           c.none, no)
Group.new('TSRepeat',             c.dark_blue,    c.none, no)
Group.new('TSString',             c.green,        c.none, no)
Group.new('TSStringEscape',       c.dark_magenta, c.none, no)
Group.new('TSStringRegex',        c.green,        c.none, no)
Group.new('TSStrong',             c.yellow,       c.none, no)
Group.new('TSStructure',          c.yellow,       c.none, no)
Group.new('TSTag',                c.red,          c.none, no)
Group.new('TSTagDelimiter',       c.fg3,          c.none, no)
Group.new('TSText',               c.yellow,       c.none, no)
Group.new('TSTitle',              c.yellow,       c.none, no)
Group.new('TSType',               c.blue,         c.none, no)
Group.new('TSTypeBuiltin',        c.blue,         c.none, no)
Group.new('TSUnderline',          c.yellow,       c.none, no)
Group.new('TSURI',                c.yellow,       c.none, no)
Group.new('TSVariable',           c.dark_magenta, c.none, no)
Group.new('TSVariableBuiltin',    c.yellow,       c.none, no)

-----------------------------
-- Telescope Highlighting --
-----------------------------
Group.new('TelescopePromptBorder', c.blue, c.none, no)
Group.new('TelescopePreviewBorder', c.magenta, c.none, no)
Group.new('TelescopeResultsBorder', c.blue, c.none, no)
