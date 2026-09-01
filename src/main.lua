local modDir = g_currentModDirectory
local modName = g_currentModName

SilverrunTrees = {}
SilverrunTrees.SPLIT_TYPE_NAME = "SPRUCE_SILVERRUN"
SilverrunTrees.SPLIT_TYPE_INDEX = 69

function SilverrunTrees:loadMap()
    local xmlFile = loadXMLFile("silverrunTreeTypes", modDir .. "xml/treeTypes.xml")

    g_treePlantManager:loadTreeTypes(xmlFile, g_currentMissionnfo, modDir, false, modName)

    addConsoleCommand("gsTreeList", "List all trees", "consoleCommandListTrees", SilverrunTrees)
end

function SilverrunTrees:consoleCommandListTrees()
    for _, treeType in pairs(self.treeTypes) do
        print(treeType.name)
        print(treeType.title)
        print("------")
    end
end


addModEventListener(SilverrunTrees)