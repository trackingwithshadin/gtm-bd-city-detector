___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "BD Smart City Detector | Tracking with Shadin",
  "description": "Automatically extracts precise City/District names from full address lines for Bangladesh. Developed by Tracking with Shadin to enhance e-commerce data quality and shipping accuracy.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "fullAddress",
    "displayName": "Full Address Data Layer Variable",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const makeString = require('makeString');

const fullAddress = data.fullAddress;
if (!fullAddress) return undefined;

const address = makeString(fullAddress).toLowerCase();
if (!address) return undefined;

const districtMap = [
    { en: "Dhaka", bn: "ঢাকা" }, { en: "Faridpur", bn: "ফরিদপুর" }, { en: "Gazipur", bn: "গাজীপুর" },
    { en: "Gopalganj", bn: "গোপালগঞ্জ" }, { en: "Kishoreganj", bn: "কিশোরগঞ্জ" }, { en: "Madaripur", bn: "মাদারীপুর" },
    { en: "Manikganj", bn: "মানিকগঞ্জ" }, { en: "Munshiganj", bn: "মুন্সীগঞ্জ" }, { en: "Narayanganj", bn: "নারায়ণগঞ্জ" },
    { en: "Narsingdi", bn: "নরসিংদী" }, { en: "Rajbari", bn: "রাজবাড়ী" }, { en: "Shariatpur", bn: "শরীয়তপুর" }, { en: "Tangail", bn: "টাঙ্গাইল" },
    { en: "Bandarban", bn: "বান্দরবান" }, { en: "Brahmanbaria", bn: "ব্রাহ্মণবাড়িয়া" }, { en: "Chandpur", bn: "চাঁদপুর" },
    { en: "Chattogram", bn: "চট্টগ্রাম" }, { en: "Cox's Bazar", bn: "কক্সবাজার" }, { en: "Cumilla", bn: "কুমিল্লা" },
    { en: "Feni", bn: "ফেনী" }, { en: "Khagrachhari", bn: "খাগড়াছড়ি" }, { en: "Lakshmipur", bn: "লক্ষ্মীপুর" },
    { en: "Noakhali", bn: "নোয়াখালী" }, { en: "Rangamati", bn: "রাঙ্গামাটি" },
    { en: "Bogra", bn: "বগুড়া" }, { en: "Joypurhat", bn: "জয়পুরহাট" }, { en: "Naogaon", bn: "নওগাঁ" },
    { en: "Natore", bn: "নাটোর" }, { en: "Chapainawabganj", bn: "চাঁপাইনবাবগঞ্জ" }, { en: "Pabna", bn: "পাবনা" },
    { en: "Rajshahi", bn: "রাজশাহী" }, { en: "Sirajganj", bn: "সিরাজগঞ্জ" },
    { en: "Bagerhat", bn: "বাগেরহাট" }, { en: "Chuadanga", bn: "চুয়াডাঙ্গা" }, { en: "Jessore", bn: "যশোর" },
    { en: "Jhenaidah", bn: "ঝিনাইদহ" }, { en: "Khulna", bn: "খুলনা" }, { en: "Kushtia", bn: "কুষ্টিয়া" },
    { en: "Magura", bn: "মাগুরা" }, { en: "Meherpur", bn: "মেহেরপুর" }, { en: "Narail", bn: "নড়াইল" }, { en: "Satkhira", bn: "সাতক্ষীরা" },
    { en: "Barguna", bn: "বরগুনা" }, { en: "Barishal", bn: "বরিশাল" }, { en: "Bhola", bn: "ভোলা" },
    { en: "Jhalokati", bn: "ঝালকাঠি" }, { en: "Patuakhali", bn: "পটুয়াখালী" }, { en: "Pirojpur", bn: "পিরোজপুর" },
    { en: "Habiganj", bn: "হবিগঞ্জ" }, { en: "Moulvibazar", bn: "মৌলভীবাজার" }, { en: "Sunamganj", bn: "সুনামগঞ্জ" }, { en: "Sylhet", bn: "সিলেট" },
    { en: "Dinajpur", bn: "দিনাজপুর" }, { en: "Gaibandha", bn: "গাইবান্ধা" }, { en: "Kurigram", bn: "কুড়িগ্রাম" },
    { en: "Lalmonirhat", bn: "লালমনিরহাট" }, { en: "Nilphamari", bn: "নীলফামারী" }, { en: "Panchagarh", bn: "পঞ্চগড়" },
    { en: "Rangpur", bn: "রংপুর" }, { en: "Thakurgaon", bn: "ঠাকুরগাঁও" },
    { en: "Jamalpur", bn: "জামালপুর" }, { en: "Mymensingh", bn: "ময়মনসিংহ" }, { en: "Netrokona", bn: "নেত্রকোনা" }, { en: "Sherpur", bn: "শেরপুর" }
];

for (let i = 0; i < districtMap.length; i++) {
    const enName = districtMap[i].en.toLowerCase();
    const bnName = districtMap[i].bn;

    if (address.indexOf(enName) !== -1 || address.indexOf(bnName) !== -1) {
        return districtMap[i].en;
    }
}

return undefined;


___TESTS___

scenarios: []


___NOTES___

Created on 2/24/2026, 11:13:14 PM



___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.
