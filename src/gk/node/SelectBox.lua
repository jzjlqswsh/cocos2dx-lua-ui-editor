--
-- Created by IntelliJ IDEA.
-- User: huangkun
-- Date: 17/1/18
-- Time: 上午11:34
-- To change this template use File | Settings | File Templates.
--

local SelectBox = class("SelectBox", function()
    return cc.Node:create()
end)

function SelectBox:ctor(size, items, index)
    --    assert(((not items) or (#items == 0)), "SelectBox's items == nil or size = 0 !")
    self:enableNodeEvents()
    self:setContentSize(size)
    self.selectItems = items
    self.selectIndex = index or 1
end

function SelectBox:onSelectChanged(callback)
    self.onSelectChangedCallback = callback
end

function SelectBox:setScale9SpriteBg(scale9Sprite)
    local contentSize = self:getContentSize()
    scale9Sprite:setContentSize(contentSize)
    local button = gk.Button.new()
    button:setContentNode(scale9Sprite)
    self:addChild(button, -1)
    button:setPosition(cc.p(contentSize.width / 2, contentSize.height / 2))
    button:onClicked(function()
        self:openPopup()
    end)
end

function SelectBox:setDisplayLabel(label)
    assert(label:getParent() == nil, "SelectBox's display label cannot be added again!")
    self.label = label
    self.label:setString(self.selectItems[self.selectIndex])
    self:addChild(label)
    label:setOverflow(2)
    local contentSize = self:getContentSize()
    label:setPosition(cc.p(contentSize.width / 2, contentSize.height / 2))
    label:setDimensions(contentSize.width, contentSize.height)
    label:setHorizontalAlignment(cc.TEXT_ALIGNMENT_LEFT)
    label:setVerticalAlignment(cc.TEXT_ALIGNMENT_CENTER)
end

function SelectBox:onCreatePopupLabel(creator)
    self.popupLabelCreator = creator
end

function SelectBox:didCreatePopupLabel(callback)
    self.popupLabelDidCreated = callback
end

function SelectBox:getSelectItem()
end

function SelectBox:setSelectItem(item)
end

function SelectBox:openPopup()
    gk.log("openPopup")
    self:closePopup()
    local bg = CREATE_SCALE9_SPRITE("gk/res/texture/edbox_bg.png", cc.rect(20, 8, 10, 5))
    local size = self:getContentSize()
    local height = size.height * (#self.selectItems)
    bg:setContentSize(cc.size(size.width, height))
    bg:setAnchorPoint(cc.p(0, 1))
    self.popup = bg

    -- add to the top layer
    local root = gk.util:getRootNode(self)
    root:addChild(bg, 9999999)
    local p = self:convertToWorldSpace(cc.p(0, 0))
    local p = root:convertToNodeSpace(p)
    bg:setPosition(p)
    bg:setScale(gk.util.getGlobalScale(self))

    if self.popupLabelCreator then
        for i = 1, #self.selectItems do
            local label = self.popupLabelCreator()
            local button = gk.Button.new()
            label:setOverflow(1)
            label:setString(self.selectItems[i])
            label:setDimensions(size.width, size.height)
            label:setHorizontalAlignment(cc.TEXT_ALIGNMENT_LEFT)
            label:setVerticalAlignment(cc.TEXT_ALIGNMENT_CENTER)
            if self.popupLabelDidCreated then
                self.popupLabelDidCreated(label)
            end
            button:setContentNode(label)
            bg:addChild(button)
            button:setPosition(cc.p(size.width / 2, height - size.height / 2 - (i - 1) * size.height))
            button:onClicked(function()
                self:closePopup()
                if self.selectIndex ~= i then
                    self.selectIndex = i
                    self.label:setString(self.selectItems[i])
                    if self.onSelectChangedCallback then
                        self.onSelectChangedCallback(i)
                    end
                end
            end)
        end
    end
    local listener = cc.EventListenerTouchOneByOne:create()
    listener:setSwallowTouches(true)
    listener:registerScriptHandler(function(touch, event)
        if self.popup and not gk.util:hitTest(self.popup, touch) then
            self:closePopup()
            return true
        else
            return false
        end
    end, cc.Handler.EVENT_TOUCH_BEGAN)
    local eventDispatcher = self:getEventDispatcher()
    eventDispatcher:addEventListenerWithSceneGraphPriority(listener, self.popup)
end

function SelectBox:closePopup()
    if self.popup then
        gk.log("closePopup")
        self.popup:removeFromParent()
        self.popup = nil
    end
end

function SelectBox:onExit()
    self:closePopup()
end

return SelectBox