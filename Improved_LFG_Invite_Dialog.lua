LFGListInviteDialog.GroupName:ClearAllPoints();
LFGListInviteDialog.GroupName:SetPoint("TOP", 0, -33);



LFGListInviteDialog.ActivityName:ClearAllPoints();
LFGListInviteDialog.ActivityName:SetPoint("TOP", 0, -80);


local orginalFunction = LFGListInviteDialog_Show;

LFGListInviteDialog_Show = function(self, resultID)

orginalFunction(self, resultID)

local id, activityID, name, comment, voiceChat, iLvl, honorLevel, age, numBNetFriends, numCharFriends, numGuildMates, isDelisted, leaderName, numMembers, isAutoAccept = C_LFGList.GetSearchResultInfo(resultID);
self.GroupName:SetText(name .. "\n" .. leaderName .. "\n" .. numMembers .. " members");

end
