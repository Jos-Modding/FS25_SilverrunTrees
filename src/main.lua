local modDir = g_currentModDirectory

TreePlantManager.loadMapData = Utils.overwrittenFunction(TreePlantManager.loadMapData, function(self, superFunc, xmlFile, missionInfo, baseDirectory)
    local result = superFunc(self, xmlFile, missionInfo, baseDirectory)
    local treeTypesFile = loadXMLFile("silverrunTreeTypes", modDir .. "xml/treeTypes.xml")

    if treeTypesFile ~= nil and treeTypesFile ~= 0 then
        self:loadTreeTypes(treeTypesFile, missionInfo, modDir)
        delete(treeTypesFile)
    end

    return result
end)
