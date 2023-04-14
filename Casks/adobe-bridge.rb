cask "adobe-bridge" do
    version "2023,13.0.3.693"
    sha256 :no_check

    url "https://prod-rel-ffc-ccm.oobesaas.adobe.com/adobe-ffc-external/core/v1/wam/download?sapCode=KBRG&productName=Bridge&version=13.0.3&os=mac&guid=8008f728-469b-47ab-a5e6-82e6808751f0&contextParams=%7B%22component%22%3A%22cc-home%22%2C%22visitor_guid%22%3A%2271135034480906223432907498855340176777%22%2C%22campaign_id%22%3A%2232112%22%2C%22browser%22%3A%22chrome%22%2C%22context_guid%22%3A%22efdad97b-94b4-417b-97c0-f7c112959315%22%2C%22variation_id%22%3A%2287423%22%2C%22experience_id%22%3A%22na%22%2C%22planCodeList%22%3A%22custom_fonts_evip_enterprise%7Caspk_hed_indirect_enterprise_ml%22%2C%22secondarySapcodeList%22%3A%22%22%2C%22Product_ID_Promoted%22%3A%22KBRG%22%2C%22userGuid%22%3A%22ECD07E5162DF18300A495C3E%40f5d86e0462df182f495cf7.e%22%2C%22authId%22%3A%221B4D57384BE90E460A04B837%40AdobeID%22%2C%22contextComName%22%3A%22ACom%3ACCH%22%2C%22contextSvcName%22%3A%22WAM%22%2C%22contextOrigin%22%3A%22ACom%3ACCH%22%2C%22gpv%22%3A%22commerce.adobe.com%3Abusiness-trial%3Asign-up%22%2C%22s_vi%22%3A%22%5BCS%5Dv1%7C31A39A77A6CB068D-40001CDBF62ACE2F%5BCE%5D%22%2C%22AMCV_8F99160E571FC0427F000101%2540AdobeOrg%22%3A%22-2121179033%257CMCMID%257C71135034480906223432907498855340176777%257CMCIDTS%257C19285%257CMCAAMLH-1666820339%257C6%257CMCAAMB-1666820339%257Cj8Odv6LonN4r3an7LhD3WZrU1bUpAkFkkiY1ncBR96t2PTI%257CMCOPTOUT-1666222739s%257CNONE%257CvVersion%257C5.3.0%22%2C%22mid%22%3A%2271135034480906223432907498855340176777%22%2C%22aid%22%3A%2231A39A77A6CB068D-40001CDBF62ACE2F%22%2C%22AppMeasurementVersion%22%3A%222.22.4%22%2C%22kaizenTrialDuration%22%3A7%7D&wamFeature=nuj-live&environment=prod&api_key=CCHomeWeb1"
    name "Adobe Bridge"
    desc "A powerful creative asset manager."
    homepage "https://www.adobe.com/products/bridge.html"

installer manual: "Bridge Installer.app"
uninstall script: {
            executable: "/Library/Application Support/Adobe/Uninstall/KBRG_13_0_3_32.app/Contents/MacOS/Uninstaller"
          }

end
