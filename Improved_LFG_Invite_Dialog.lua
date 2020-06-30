LFGListInviteDialog.GroupName:ClearAllPoints();
LFGListInviteDialog.GroupName:SetPoint("TOP", 0, -33);



LFGListInviteDialog.ActivityName:ClearAllPoints();
LFGListInviteDialog.ActivityName:SetPoint("TOP", 0, -80);


local orginalFunction = LFGListInviteDialog_Show;

LFGListInviteDialog_Show = function(self, resultID)

orginalFunction(self, resultID)

    local srcData = C_LFGList.GetSearchResultInfo(resultID);
    self.GroupName:SetText(srcData.name .. "\n" .. srcData.leaderName .. "\n" .. srcData.numMembers .. " members");

end
