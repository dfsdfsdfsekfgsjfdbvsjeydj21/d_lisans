local IPlist = {
        {"asteriaroleplay", "217.195.207.17"},     --Eray Korkmaz
}
objelist = {}
objelist["4027"] = "Sunucu Özel Galeri"
objelist["6337"] = "Sunucu Özel Galeri"
objelist["5503"] = "IGS Modellemesi"
objelist["4059"] = "Gun Shop"
objelist["4877"] = "New Binco"
objelist["5107"] = "Sanayi Sitesi"
objelist["5409"] = "IGS Modellemesi"
objelist["5489"] = "IGS Modellemesi"
objelist["5628"] = "Turk Dukkanları"
objelist["2942"] = "ATM Modellemesi"
objelist["3975"] = "Polis Binası"
objelist["5704"] = "Banka Modellemesi"
objelist["4859"] = "Site Modellemesi"
objelist["2713"] = "Hastane Interior"
objelist["2942"] = "ATM Modellemesi"
objelist["5411"] = "Skate Park % Sokak"
objelist["5418"] = "Mc Donald's Model"
objelist["5708"] = "Acıbadem Hastanesi"
objelist["5521"] = "Kahvehane Model"
objelist["6332"] = "Kuyumcu Soygun"
objelist["14847"] = "Polis Interior"
objelist["15060"] = "Apartman Interior"
objelist["1964"] = "Kız Kulesi Interior"
objelist["14475"] = "Poligon Modellemesi"
objelist["16192"] = "Maden Modellemesi"
objelist["5397"] = "Galeri Modellemesi"
objelist["14479"] = "Pillbox Modellemesi"
objelist["17594"] = "FiveM Otel Modellemesi"
objelist["5168"] = "Taco Modellemesi"



keylist = {}
keylist["asteriaroleplay"] = "Asteria Roleplay (2/2)"










local oneat = nil

function Magic(res)
    name = getServerConfigSetting("servername")
    fetchRemote("https://api.my-ip.io/ip", function(ip)
        --print("IP Kontrol ediliyor....")
        serverip = ip 
    if tostring(ip) then 
            for i, data in ipairs(IPlist) do
                if data[2] == ip then 
                data1 = data[1]
                data2 = data[2]
                end
            end
        if data1 == keygetir() then 
            if oneat then return end
            setElementData(root, "setElementData", 1)
            print ("Lisans ONAYLANDI! www.caypmodel.com")
            sendMessage("objelog", "➥ **OBJE LİSANSI: ** V5 PROTECT ♛ \n➥ **OBJE ADI**: " ..objelist[objectt()] .."\n➥ **SUNUCU IP:** "..ip.."  \n➥ **SUNUCU ADI:** " ..keylist[keygetir()] .. "\n➥ **OBJE LİSANSI:** Onaylandı! \n➥ **Orjinal model kullandığınız için teşekkür ederiz!**\n--------------------------------------------------------------------")
            oneat = true
        else 
            setTimer(function()
    --shutdown("Güle Güle")
end,2000*5,1)
            print("Lisans ONAYLANMADI! Cayp Model ile iletisime geciniz.")
            print("Lisans tespit edilemedi.10 saniye icinde sunucu kapatiliyor...")
            print("Lisans Var ise restart atiniz.")
            print("www.caypmodel.com")
            setElementData(root, "setElementData", nil)
            sendMessage("objelog", "➥ **OBJE LİSANSI: ** V5 PROTECT ♛ \n➥ **OBJE ADI**: " ..objelist[objectt()] .."\n➥ **SUNUCU IP:** "..ip.."  \n➥ **SUNUCU ADI:** " ..keylist[keygetir()] .. "\n➥ **OBJE LİSANSI:** Onaylanmadı!:warning: \n➥ **Çalıntı model tespit edild! 10 saniye içinde sunucu kapatılıyor... ** \n--------------------------------------------------------------------")        end
    else 
         print("Sistem kendini güncelliyor 2 dakika sonra restart atın!")
    end
    end)
end
addEvent("baslalan", true)
addEventHandler ("baslalan", getResourceRootElement(), Magic )

Webhooks = {
    ["objelog"] = {
        link = "https://discord.com/api/webhooks/903556860643270666/5NVFCYG2080b70FoqOP-CM-eRfOw4nDgh87mbYqmOdtezj1JUqYPYYK66Kv5L2soruIQ",
        avatar = "https://cdn.discordapp.com/attachments/844871878127517726/906811768930717697/gif.gif", -- if u want to empty, enter nil
        username = "Cayp Licanse V5"
    }
}

function keygetir()
  return sifre
end

function objectt()
  return objectID
end
