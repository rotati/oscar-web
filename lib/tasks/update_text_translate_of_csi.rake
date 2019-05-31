namespace :update_text_and_translate_csi do
  desc 'update and translate all CSI domains'
  task update: :environment do

    Organization.where.not(short_name: 'shared').each do |org|
      Organization.switch_to org.short_name
      domains =
      [
        {
          name: "1A",
          group: 1,
          local_description: "<p><span style=\"text-decoration: underline;\"><strong>កត្តា ៖ ១ក (សុវត្ថិភាពស្បៀងអាហារ)</strong></span></p>\r\n<p><strong>គោលបំណង៖</strong> កុមាររូបនេះមានអាហារបរិភោគគ្រប់គ្រាន់គ្រប់ពេលសំរាប់ឆ្នាំនេះ។</p>\r\n<p><strong>សំនួរគំរូ៖</strong></p>\r\n<ul>\r\n<li>តើគ្រួសារ/កុមារមានអ្វីបរិភោគខ្លះ?</li>\r\n<li>តើគ្រួសារទទួលបានអាហារដោយរបៀបណា?</li>\r\n<li>សូមប្រាប់ខ្ញុំពីពេលវេលាកាលដែលមិនមានអាហារបរិភោគគ្រប់គ្រាន់។</li>\r\n<li>តើកុមាររូបនេះ នេះត្អូញត្អែពីការអត់ ឃ្លាន រឺទេ?</li>\r\n</ul>\r\n<p><strong>ចំនុចដែលត្រូវសង្កេតមើលអំឡុងជំនួប៖</strong></p>\r\n<ul>\r\n<li>សូមអង្កេតមើលលើផ្ទះ/សត្វចិញ្ចឹមក្នុងបរិវេនផ្ទះ។ តើពួកគេមានដំណាំ និង /ឬ មានសត្វចិញ្ចឹមដែររឺទេ?</li>\r\n<li>តើផ្ទះបាយមើលទៅហាក់ដូចជាទើបនឹងប្រើដើម្បីចំអិនអាហារថ្មីៗ រឺទេ?</li>\r\n<li>តើគ្រួសារ​នេះ​មាន​អង្គរប៉ុន្មានគ.ក?​​​ ស្រូវប៉ុន្មាន​គ.ក?</li>\r\n<li>តើអ្នកមាន​ឃើញសញ្ញានានាដែលបង្ហាញថាគ្រួសារនេះទើបតែបានដាំស្លរួចថ្មីៗដែរឬទេ​ (ឧទា.ដូចជាមាននៅសល់បាយក្នុងឆ្នាំង ចានដែលទើបតែហូបអាហាររួច…)?</li>\r\n</ul>",
          score_1_local_definition: "កុមាររូបនេះមិនសូវ មានឣាហារបរិភោគ ហើយចូលគេងទាំងឃ្លាន ស្ទើររាល់យប់។",
          score_2_local_definition: "កុមាររូបនេះជាញឹកញាប់មានអាហារបរិភោគតិចតួចជាងតម្រូវការ និងត្អូញត្អែរពី ការ ឃ្លាន។",
          score_3_local_definition: "នៅពេលខ្លះ កុមាររូបនេះបរិភោគ គ្រប់គ្រាន់ ឣាស្រ័យទៅលើរដូវកាល ឬការផ្គត់ផ្គង់អាហារ។",
          score_4_local_definition: "កុមាររូបនេះមានអាហារផ្គត់ផ្គង់គ្រប់ គ្រាន់, បរិភោគបានជាទៀងទាត់។"
        },
        {
          name: "1B",
          group: 1,
          local_description: "<p><span style=\"text-decoration: underline;\"><strong>កត្តា៖ ១ខ (ឣាហាររូបត្ថម្ភ និងការលូតលាស់)</strong></span></p>\r\n<p><strong>គោលបំណង៖</strong> កុមាររូបនេះ កំពុងលូតលាស់ បាន ល្អ បើប្រៀបធៀបទៅនឹង កុមារផ្សេងៗទៀតដែលមានអាយុ ដូច គាត់/នាង នៅក្នុង សហគ មន៍ ។</p>\r\n<p><strong>សំនួរគំរូ៖</strong></p>\r\n<ul>\r\n<li>តើការលូតលាស់របស់កុមាររូបនេះមានលក្ខណៈយ៉ាងដូចម្តេច?</li>\r\n<li>តើការលូតលាស់របស់គាត់/នាងមានលក្ខណៈដូចគ្នានឹងកុមាររូបនេះដ៏ទៃទៀតដែលមានអាយុស្របាលគ្នា រឺទេ?</li>\r\n<li>តើអ្នកព្រួយបារម្ភពីការលូតលាស់របស់កុមារនេះទេ? ទម្ងន់គាត់ដូចម្តេចដែរ? កម្ពស់គាត់ដូចម្តេចដែរ?</li>\r\n</ul>\r\n<p><strong>ចំនុចដែលត្រូវសង្កេតមើលអំឡុងជំនួប៖</strong></p>\r\n<ul>\r\n<li>ចូរធ្វើការប្រៀបធៀប ថាតើកុមាររូបនេះមានការលូតលាស់ល្អកំរិតណាបើធៀបទៅនឹងកុមាររូបនេះដែលមានអាយុស្របាលគ្នាហើយរស់នៅក្នុងតំបន់នោះ។</li>\r\n<li> សូមសង្កេតមើលឱ្បានដិតដល់ ចំពោះកុមារអាយុក្រោម៥ឆ្នាំ។​ តើកុមារនោះមាន​លក្ខណៈ​ ស្គមស្គាំង ក្បាលធំ ឬមួយពោះប៉ោង?\r\n</li></ul>\r\n<p>&nbsp;</p>",
          score_1_local_definition: "កុមាររូបនេះមានទម្ងន់ស្រាលខ្លាំង រឺមានកំពស់ទាបខ្លាំងបើធៀបទៅនឹងអាយុរបស់គាត់/ នាង។",
          score_2_local_definition: "កុមាររូបនេះមានទម្ងន់ស្រាល កម្ពស់ទាបជាង ហើយ/ឬ មិនសូវស្វាហាប់ដូចកុមារផ្សេងទៀតដែលមានអាយុដូចគ្នានៅក្នុងសហគមន៍។",
          score_3_local_definition: "កុមាររូបនេះហាក់ដូចជាកំពុងលូតលាស់ បាន ល្អ ប៉ុន្តែមិនសូវសកម្ម បើប្រៀបធៀបទៅនឹង កុមារផ្សេងៗទៀត ដែលមានអាយុដូចគ្នានៅក្នុងសហគមន៍។",
          score_4_local_definition: "ទម្ងន់ កម្ពស់ និងភាពស្វាហាប់របស់កុមាររូបនេះ កំពុងលូតលាស់បានល្អ ទៅតាមអាយុរបស់គាត់ឬនាង។"
        },
        {
          name: "2A",
          group: 2,
          local_description: "<p><span style=\"text-decoration: underline;\"><strong>កត្តា៖ ២ក (ជម្រក/លំនៅ ដ្ឋាន)</strong></span></p>\r\n<p><strong>គោលបំណង៖</strong> កុមាររូបនេះមានជម្រកច្បាស់លាស់ ដែលមានភាពសមរម្យ ស្ងួត ហើយសុវត្ថិភាព។</p>\r\n<p><strong>សំនួ រគំរូ៖</strong></p>\r\n<ul>\r\n<li>តើកុមាររូបនេះរស់នៅកន្លែងណា?</li>\r\n<li>តើ មាន បញ្ហាលំបាក ឣ្វី ខ្លះ ទាក់ ទងនឹង ផ្ទះនេះ?</li>\r\n<li>តើកុមាររូបនេះគេងនៅកន្លែងណា?</li>\r\n</ul>\r\n<p><strong>ចំនុចដែលត្រូវសង្កេតមើលអំឡុងជំនួប៖</strong></p>\r\n<ul>\r\n<li>តើផ្ទះនេះមានទំហំធំល្មមសម្រាប់ចំនួនសមាជិកគ្រួសារកំពុងរស់នៅឬទេ?</li>\r\n<li>តើ ផ្ទះ នេះតម្រូវឲ្យ មាន ការ ជួសជុលដែរឬទេ?</li>\r\n<li>តើ កន្លែង គេង របស់ កុមាររូបនេះមានស្ថានដូច ស្ថានភាពផ្ទះ ដែល ត្រូវ ជួសជុល?</li>\r\n<li>តើ ផ្ទះ មាន សុវត្ថិភាព សម្រាប់តម្រូវការរបស់កុមាររូបនេះទៅតាម ឣាយុ និងដំណាក់កាល នៃការ ឣភិវឌ្ឍន៍របស់ពួកគេដែរឬទេ?</li>\r\n<li>តើគ្រួសារនេះមានកន្លែងងូតទឹក និងបង្គន់ប្រើប្រាស់នៅជិត ហើយងាយស្រួល​​​ ដល់កុមារនេះដែរឬទេ?</li>\r\n<li>តើផ្លូវដើរចូលផ្ទះ (ដូចជាជណ្តើរ ច្រកចេញចូល…)មានសុវត្ថិភាពសម្រាប់កុមារនេះ ដែរឬទេ?</li>\r\n</ul>",
          score_1_local_definition: "កុមាររូបនេះមិនមានកន្លែងស្នាក់នៅច្បាស់លាស់​ ​សមរម្យ និង សុវត្ថិភាព​ដើម្បីរស់នៅឡើយ។",
          score_2_local_definition: "កុមាររូបនេះរស់នៅក្នុងកន្លែងដែលត្រូវការជួសជុលជាចាំបាច់ ចង្អៀតពេក សភាពមិនសមរម្យ និង/ឬ មិនអាច​​​ការ​ពារ​គាត់/​នាង​បាន​ពីអាកាស​ធាតុ។",
          score_3_local_definition: "កុមាររូបនេះរស់នៅក្នុងកន្លែងដែលត្រូវមានការជួសជុលខ្លះៗ​ ប៉ុន្តែទីនោះមាន​សភាព​សមរម្យល្មម ស្ងូត​ និងសុវត្ថិភាព។",
          score_4_local_definition: "កុមាររូបនេះបានរស់នៅក្នុងកន្លែងដែលមានសភាពសមរម្យ ស្ងួត និងសុវត្ថិភាព។"
        },
        {
          name: "2B",
          group: 2,
          local_description: "<p><span style=\"text-decoration: underline;\"><strong>កត្តា៖ ២ខ (ការថែទាំ)</strong></span></p>\r\n<p><strong>គោលបំណង៖</strong>&nbsp; កុមាររូបនេះមានមនុស្សពេញវ័យ (មានអាយុ ១៨ឆ្នាំ រី ចាស់ជាង) យ៉ាងហោចណាស់ម្នាក់ ដែលអាចផ្តល់ ការថែទាំខ្ជាប់ខ្ជួន យកចិត្តទុកដាក់ និងជួយគាំទ្រ។</p>\r\n<p><strong>សំនួរគំរូ៖</strong></p>\r\n<ul>\r\n<li>តើនរណាជាមនុស្សពេញវ័យដែលសំខាន់បំផុតនៅក្នុងជីវិតរបស់កុមារនេះ?</li>\r\n<li>តើនរណាជាអ្នកថែរក្សាកុមារនេះ?</li>\r\n<li>តើបុគ្គលនោះនឹងនៅបន្តមើលថែកុមាររបនេះ រហុតដល់គាត់ធំដឹងក្តីដែរឬទេ?</li>\r\n<li>តើកុមាររូបនេះប្រាប់នរណា ពេលដែលមានអ្វីរំភើប ឬសប្បាយរីករាយកើតឡើង?</li>\r\n<li>តើកុមាររូបនេះប្រាប់នរណា ប្រសិនបើគាត់មានអារម្មណ៍មិនសប្បាយចិត្ត ឬមានការព្រួយបារម្ភ?</li>\r\n<li>តើកុមាររូបនេះប្រាប់នរណា ប្រសិនបើគាត់មានការឈឺចាប់?</li>\r\n</ul>\r\n<p><strong>ចំនុចដែលត្រូវសង្កេតមើលអំឡុងជំនួប៖</strong></p>\r\n<ul>\r\n<li>តើកុមារ និងមនុស្សពេញវ័យមានទំនាក់ទំនងចំពោះគ្នាទៅវិញទៅមកយ៉ាងដូចម្តេច?</li>\r\n<li>តើពួកគេមើលទៅហាក់ដូចជាស្គាល់គ្នាច្បាស់ដែររឺទេ?</li>\r\n<li>តើ ទំនាក់ ទំនង រវាងមនុស្ស ពេញ វ័យ និង កុមារបានបង្ហាញ ពីទំនាក់ទំនងដែលប្រកបដោយ ក្តីស្រឡាញ់ ដែរ រឺទែ?</li>\r\n<li>តើមានការផ្លាស់ប្តូរអ្នកថែទាំកុមាររូវបនេះដែរឬទេ ចាប់តាំងពីអ្នកបានធ្វើការជាមួយគ្រួសារនេះមក?</li>\r\n</ul>",
          score_1_local_definition: "កុមាររូបនេះគ្មានមនុស្សពេញវ័យមើលថែ ហើយត្រូវ ផ្គត់ផ្គង់ ដោយខ្លួនឯង ឬរស់នៅដោយដើរតួរជាមេគ្រួសារ។",
          score_2_local_definition: "កុមាររូបនេះគ្មានមនុស្សពេញវ័យនៅដែលផ្ដល់​សេចក្តី​ស្រឡាញ់​ ការយកចិត្តទុកដាក់ និង​ការ​គាំទ្របាន​ខ្ជាប់​ខ្ជូន​ទេ។",
          score_3_local_definition: "កុមាររូបនេះមានមនុស្សពេញវ័យម្នាក់​នៅ​មើលថែ ប៉ុន្តែ​ការ​ថែ​ទាំ​នោះ​នៅមាន​កម្រិត​ ដោយ​សារ​ជំងឺ ​អាយុ ឬដូចជាមិនអើពើជាមួយកុមាររូបនេះ។",
          score_4_local_definition: "កុមាររូបនេះមានមនុស្សពេញវ័យ ជាអ្នកថែទំាសំខាន់​ម្នាក់​ក្នុង​ជីវិត ដែល​ផ្តល់​នូវ​កិច្ចការពារ និង​ចិញ្ចឹម​បីបាច់​គាត់​។"
        },
        {
          name: "3A",
          group: 3,
          local_description: "<p><span style=\"text-decoration: underline;\"><strong>កត្តា៖ ៣ក (ការការពារ ពីការរំលោភបំពាន និងការកេងប្រវ័ញ្ច)</strong></span></p>\r\n<p><strong>គោលបំណង៖</strong> កុមាររូបនេះមានសុវត្ថិភាពពីការរំលោភបំពាន ភាពព្រងើយកន្តើយ រឺការកេងប្រវ័ញ្ច។</p>\r\n<p><strong>សំនួរគំរូ៖</strong></p>\r\n<ul>\r\n<li>តើមាននរណាម្នាក់​ធ្វើឲ្យកុមាររូបនេះឈឺចាប់ដែរ​ រឺទេ?</li>\r\n<li>តើអ្នកគិតថាកុមាររូបនេះមានអារម្មណ៏សុវត្ថិភាពដែរ រឺទេ?</li>\r\n<li>តើកុមាររូបនេះធ្វើការឲ្យ​នរណាម្នាក់ក្រៅពីគ្រួសារ រឺទេ?</li>\r\n<li>តើកុមាររូបនេះធ្វើការពេលយប់ដែរឬទេ?</li>\r\n<li>តើកុមាររូបនេះធ្វើការតាមដងផ្លូវឬនៅតាមផ្សារដែរឬទេ? តើលុយដែលគាត់រកបាន ត្រូវយកទៅណា?</li>\r\n<li>តើមាននរណាម្នាក់​ផ្សេងទៀតដែល​ស្គាល់​កុមារ​រូប​នេះ ​មាន​គំនិត​ថា​គាត់​កំពុង​ត្រូវ​បាន​អ្នក​ដទែ​ធ្វើ​បាប ឬរំលោភ​បំពាន​ដែរ​រឺទែ។</li>\r\n<li>(សួរកុមារ) តើប្អូនធ្លាប់ភិតភ័យដែរឬទេ នៅពេលត្រឡប់មកផ្ទះ ដោយសារតែមានរឿងមិនល្អអាចកើតឡើង?</li>\r\n</ul>\r\n<p><strong>ចំនុចដែលត្រូវសង្កេតមើលអំឡុងជំនួប៖</strong></p>\r\n<ul>\r\n<li>តើកុមាររូបនេះមានសញ្ញា ឬស្នាមជាំណាដែលអាចសង្ស័យ​ពីការរំលោភ រឺទេ?</li>\r\n<li>តើកុមាររូបនេះមានលក្ខណៈរាថយ ឬភ័យខ្លាចដែរឬទេ? តើកុមាររូបនេះមើលទៅហាក់ដូចជារវល់ខ្លាំងពេក ដែរឬទេ បើប្រៀបធៀបជាមួយកុមារដទៃដែលមានអាយុស្របាលគ្នា?</li>\r\n<li>តើកុមាររូបនេះហាក់ដូចជាងាយភ្ញាក់ផ្អើលដែររឺទេ?</li>\r\n<li>តើកុមារមានសំដែងចេញនូវអាកប្បកិរិយាផ្លូវភេទមិនសមរម្យដែររឺទេ?</li>\r\n<li>សង្កេតមើលសញ្ញាដែលបង្ហាញថាកុមាររូបនេះរងការមិនអើពើ ឧទា.ដូចជាគាត់មានលក្ខណៈកខ្វក់គ្មានអនាម័យ មានរបួសស្នាមឬដំបៅជាប់ខ្លួន ដើរហើរដោយគ្មានស្បែកជើង សំលៀកបំពាក់មិនសមរម្យ… ។</li>\r\n</ul>",
          score_1_local_definition: "កុមាររងការរំលោភបំពានផ្លូវភេទ រឺ ផ្លូវកាយ និង រឺ កំពុងទទួលរងនូវការកេងប្រវ័ញ្ចពលកម្មកុមារ ឬការកេងប្រវ័ញ្ចផ្សេងទៀត។",
          score_2_local_definition: "កុមាររងការមិនអើពើ កំពុងធ្វើការងារដែលមិន​សមស្របទៅតាមអាយុរបស់គាត់ ឬការប្រព្រឹត្តមិនសមស្រប​ពីក្រុមគ្រួសារ។",
          score_3_local_definition: "​មានការសង្ស័យខ្លះ ថាកុមាររូបនេះអាចត្រូវបានគេមិនអើពើ ឱ្យធ្វើការលើសកំណត់ ប្រព្រឹត្តចំពោះគាត់មិនបានបានល្អ រឺត្រូវបានគេធ្វើបាប។",
          score_4_local_definition: "កុមារហាក់ដូចជាមិនទទួលរងនូវការរំលោភបំពាន ការមិនអើពើ ការធ្វើការងារមិនសមរម្យ ហើយមិនរងការកេងប្រវ័ញ្ចតាមរូបភាពផ្សេងទៀតឡើយ។"
        },
        {
          name: "3B",
          group: 3,
          local_description: "<p><span style=\"text-decoration: underline;\"><strong>កត្តា៖ ៣ខ (កិច្ចគាំពារផ្លូវច្បាប់)</strong></span></p>\r\n<p><strong>គោលបំណង៖</strong> កុមាររូបនេះអាចទទួលបានសេវាគាំពារផ្នែកច្បាប់តាមដែលគេត្រូវការ។</p>\r\n<p><strong>សំនួរគំរូ៖</strong></p>\r\n<ul>\r\n<li>តើកុមាររូបនេះនេះបានចុះបញ្ជីកំណើត ឬមានសំបុត្រកំណើត រឺទេ?</li>\r\n<li>តើកុមាររូបនេះមានឈ្មោះនៅក្នុងសៀភៅគ្រួសារនៃគ្រួសារនេះដែរឬទេ?</li>\r\n<li>តើក្រុមគ្រួសារមានសំបុត្របណ្តាំ រឺទេ?</li>\r\n<li>តើកុមាររូបនេះធ្លាប់ត្រូវបានគេបដិសេធមិនផ្តល់សេវាណាមួយដែរឬទេ ដោយសារលក្ខខណ្ឌផ្លូវច្បាប់?</li>\r\n<li>តើគ្រួសារនេះមានប័ណ្ណស្នាក់នៅ ឬប័ណ្ណសមធម៌ដែរឬទេ?</li>\r\n<li>តើអ្នកមានដឹងអំពីបញ្ហាផ្លូវច្បាប់ណាមួយដែរឬទែ  ពាក់ព័ន្ធនឹងកុមាររូបនេះ (ឧទាហរណ៍ ដូចជាការរំលោភយកដីធ្លីជាដើម)?</li>\r\n<li>តើកុមាររូបនេះមានមនុស្សពេញវ័យម្នាក់ជាជំហរក្នុងការទាមទារសិទ្ធិ និងគាំពារគាត់ដែររឺទេ?</li>\r\n<li>តើមានបញ្ហាណាមួយដែរឬទេ ក្នុងការទទួលបានឯកសារសម្គាល់ខ្លួន ដូចជា សំបុត្រកំណើត ប័ណ្ណស្នាក់នៅ ឬមួយប័ណ្ណសមធម៌?</li>\r\n</ul>\r\n<p><strong>ចំនុចដែលត្រូវសង្កេតមើលអំឡុងជំនួប៖</strong></p>\r\n<ul>\r\n<li>តើអ្នកថែទាំហាក់ដូចជាមានភាពស្ទាក់ស្ទើរ ឬព្រួយបារម្ភដែរឬទេ នៅពេលត្រូវបានសាកសួរអំពីស្ថានភាពផ្លូវច្បាប់របស់កុមាររូបនេះ?</li>\r\n<li>ស្នើសុំឱ្យអ្នកថែទាំកុមារបង្ហាញនូវឯកសារសម្គាល់ខ្លួនរបស់កុមាររូបនេះ (សំបុត្រកំណើត សៀវភៅគ្រួសារ ឬប័ណ្ណស្នាក់នៅ…) ។</li>\r\n</ul>",
          score_1_local_definition: "កុមាររូបនេះពុំទទួលបាន​សេវាការពារផ្លូវច្បាប់ណាមួយ ហើយកំពុងរងការ​កេងប្រវ័ញ្ចតាមផ្លូវច្បាប់។",
          score_2_local_definition: "កុមាររូបនេះពុំទទួលបាន​សេវាការពារផ្លូវច្បាប់ណាមួយ ហើយអាចប្រឈមនឹងការកេងប្រវ័ញ្ច។",
          score_3_local_definition: "កុមាររូបនេះមិនទទួលបានសេវាគាំពារតាមផ្លូវច្បាប់ទេ​ ប៉ុន្តែគាត់មិនចាំបាច់ត្រូវការកិច្ចគាំពារនេះឡើយ ។",
          score_4_local_definition: "កុមាររូបនេះទទួលបានការគាំពារខាងផ្លូវច្បាប់តាមដែលគាត់ត្រូវការ។"
        },
        {
          name: "4A",
          group: 4,
          local_description: "<p><span style=\"text-decoration: underline;\"><strong>កត្តា៖ ៤ក (សុខមាលភាព)</strong></span></p>\r\n<p><strong>គោលបំណង៖</strong> កុមាររូបនេះមានសុខភាពរាងកាយល្អ។</p>\r\n<p><strong>សំនួរគំរូ៖</strong></p>\r\n<ul>\r\n<li>សូមប្រាប់ខ្ញុំអំពីសុខភាពរបស់កុមាររូបនេះ។</li>\r\n<li>សូមប្រាប់ខ្ញុំអំពីជម្ងឺ​ចុង​ក្រោយ​គេ ដែលកុមាររូបនេះមាន។</li>\r\n<li>នៅ​ពេល​ថ្មីៗ តើកុមាររូបនេះខកខានមិនបានទៅសាលារៀន រឺធ្វើការដែរ​ឬទេ ដោយសារមានជម្ងឺ?</li>\r\n<li>តើកុមាររូបនេះ មានកើតគ្រុនក្តៅ ឬផ្តាសសាយដែរឬទេ ក្នុងគ្រាថ្មីៗនះ?</li>\r\n</ul>\r\n<p><strong>ចំនុចដែលត្រូវសង្កេតមើលអំឡុងជំនួប៖</strong></p>\r\n<ul>\r\n<li>តើកុមាររូបនេះមើលទៅដូច​ជាសកម្ម និងមានសុខភាពល្អជាធម្មតាដែរ រឺទេ?</li>\r\n<li>ពិនិត្យទៅលើរបួសស្នាម ដំបៅ ឬសញ្ញាដែលបង្ហាញថាកុមាររូបនេះមានបញ្ហាសុខភាព ឬមានជំងឺ។</li>\r\n</ul>",
          score_1_local_definition: "ក្នុងខែមុន កុមាររូបនេះបានឈឺស្ទើរគ្រប់ពេល (ជម្ងឺ​​រ៉ាំរ៉ៃ)។",
          score_2_local_definition: "ក្នុងខែមុន កុមាររូបនេះជាញឹកញាប់ (ច្រើនជាងបីថ្ងៃ) ហើយខកខានដល់ការទៅសាលា ការធ្វើការងារ  ការលេង។",
          score_3_local_definition: "ក្នុងខែមុន កុមាររូបនេះមាន​ជម្ងឺ និងមិនសូវសកម្ម (រយៈពេល ពីរ​បីថ្ងៃ) ប៉ុន្តែគាត់ នៅតែអាចចូលរួមសម្មភាពធម្មតាមួយចំនួនបាន។",
          score_4_local_definition: "នៅខែមុន កុមាររូបនេះមានសុខភាពល្អ និង សកម្ម ដោយគ្មានជម្ងឺគ្រុនក្តៅ រាគ រឺជម្ងឺផ្សេង​ទៀត​ឡើយ។"
        },
        {
          name: "4B",
          group: 4,
          local_description: "<p><span style=\"text-decoration: underline;\"><strong>កត្តា៖ ៤ខ (សេវាថែទាំសុខភាព)</strong></span></p>\r\n<p><strong>គោលបំណង៖</strong> កុមាររូបនេះ អាចទទួលបានសេវាថែទាំសុខភាព  រួមទាំងការព្យាបាលដោយឱសថសាស្រ្ត នៅពេលមានជម្ងឺ និងសេវាថែទាំបង្ការផ្សេងៗ។</p>\r\n<p><strong>សំនួរគំរូ៖</strong></p>\r\n<ul>\r\n<li>តើមានអ្វីកើតឡើងនៅពេលកុមាររូបនេះធ្លាក់ខ្លួនឈឺ?</li>\r\n<li>តើគាត់បានជួបជាមួយគិលានុបដ្ឋាយិកា វេជ្ជបណ្ឌិត ឬអ្នកជំនាញខាង​សុខ​ភាពដែរ​​រឺទេ?</li>\r\n<li>ពេលដែលកុមាររូបនេះត្រូវការថ្នាំពេទ្យ​ តើគាត់ទទួលវាបានដោយវីធីណា?</li>\r\n<li>(សំរាប់អាយុក្រោម៥ឆ្នាំ) តើកុមាររូបនេះមានបានចាក់ថ្នាំបង្ការជម្ងឺហើយ រឺនៅ? (សម្រាប់មនុស្សជំទង់)</li>\r\n<li>តើមានអ្នកណាធ្លាប់បានណែនាំកុមារអំពីការឆ្លងមេរោគអេដស៍ ជំងឺគ្រុនឈាម គ្រុនចាញ់ ជំងឺរបេង និងណែនាំអំពីរបៀបបង្ការការឆ្លងជំងឺទាំងនេះដែរឬទេ?</li>\r\n</ul>\r\n<p><strong>ចំនុចដែលត្រូវសង្កេតមើលអំឡុងជំនួប៖</strong></p>\r\n<ul>\r\n<li>ប្រសិនបើអាច, សូមសង្កេតលើប័ណ្ណចាក់វ៉ាក់សាំងរបស់កុមាររូបនេះ។</li>\r\n<li>តើកុមាររូបនេះមានមុងសម្រាប់គេងដែរឬទេ?</li>\r\n<li>តើមានសេវាសុខភាពអ្វីខ្លះដែលអាចរកបាននៅក្នុងតំបន់នោះ?</li>\r\n</ul>",
          score_1_local_definition: "កុមាររូបនេះកម្រ ឬមិនដែលធ្លាប់ទទួលបានសេវាចាំបាច់សម្រាប់ការថែទាំសុខភាពឡើយ។",
          score_2_local_definition: "កុមាររូបនេះទទួលបានសេវាថែទំាសុខភាព​(ការព្យាបាល​ រឺ ការបង្ការ)ខ្លះៗ ឬមិនបានខ្ជាប់ខ្ជួន។ឬបានត្រឹមតែពេលខ្លះប៉ុណ្ណោះ។",
          score_3_local_definition: "កុមាររូបនេះទទួលបានការព្យាបាលផ្នែកវេជ្ជសាស្រ្តនៅពេលឈឺ ប៉ុន្តែសេវាថែទាំសុខភាពខ្លះ(ឧទា. ការចាក់វ៉ាក់សាំងបង្ការ)មិនទាន់ទទួលបាននៅឡើយទេ។",
          score_4_local_definition: "កុមាររូបនេះបានទទួលនូវសេវាថែទាំសុខភាពនិងសេវាបង្ការដែលចាំបាច់​ទាំងអស់ ឬស្ទើរតែទាំងអស់​។"
        },
        {
          name: "5A",
          group: 5,
          local_description: "<p><span style=\"text-decoration: underline;\"><strong>កត្តា៖ ៥ក (សុខភាពផ្លូវចិត្ត)</strong></span></p>\r\n<p><strong>គោលបំណង៖</strong> កុមាររូបនេះមានភាពរីករាយ ហើយមានការយល់ឃើញជាវិជ្ជាមានអំពីអនាគត។</p>\r\n<p><strong>សំនួរគំរូ៖</strong></p>\r\n<ul>\r\n<li>ជាទូទៅ តើកុមាររូបនេះមានភាពរីករាយឬក៏ក្រៀមក្រំ?</li>\r\n<li>តើអ្នកអាចដឹងបានដោយរបៀបណា ថាតើគាត់មានអារម្មណ៍សប្បាយ ឬមិនសប្បាយចិត្ត?</li>\r\n<li>តើអ្នកព្រួយបារម្ភដែរឬទេ អំពីភាពក្រៀមក្រំ ឬភាពសោកសៅរបស់កុមាររូបនេះ?</li>\r\n<li>តើអ្នកធ្លាប់បានគិតដែរឬទេថា កុមាររូបនេះលែងចង់មានជីវិតរស់នៅតទៅទៀត?</li>\r\n<li>តើអ្នកព្រួយបារម្ភដែរឬទេ ថាគាត់អាចនឹងធ្វើបាបខ្លួនឯង?</li>\r\n<li>(សួរទៅកុមារផ្ទាល់) តើប្អូនគិតថាប្អូនមានជីវិតរស់នៅល្អប្រសើរដែរឬទេ?</li>\r\n<li>(សួរកុមារ) តើប្អូនគិតថាខ្លួននឹងមានអនាគតល្អដែរទេ?</li>\r\n</ul>\r\n<p><strong>ចំនុចដែលត្រូវសង្កេតមើលអំឡុងជំនួប៖</strong></p>\r\n<ul>\r\n<li>តើកុមាររូបនេះ មើលទៅហាក់ដូចជាសប្បាយរីករាយក្នុងគ្រួសារដែរឬទេ?</li>\r\n<li>តើកុមាររូបនេះចង់និយាយលេងជាមួយភ្ញៀវដែរឬទេ?</li>\r\n<li>ជាទូទៅ តាមរយៈទឹកមុខរបស់គាត់ តើកុមាររូបនេះមានអារម្មណ៍រីករាយ ឬក្រោមក្រំ?</li>\r\n</ul>",
          score_1_local_definition: "កុមាររូបនេះហាក់ដូចជាអស់សង្ឃឹម ក្រៀមក្រំ ដកខ្លួនចេញពីគេ ចង់ស្លាប់ ឬ ចង់នៅម្នាក់ឯង។ សំរាប់ទារកវិញ គាត់បដិសេធក្នុងការញុំាអាហារ គេងមិនបានស្កប់ស្កល់ ឬយំច្រើន។",
          score_2_local_definition: "ជារឿយៗ កុមាររូបនេះច្រើននៅដាច់ឆ្ងាយពីគេ ឆាប់ខឹង ខ្វល់ខ្វាយ មិនសប្បាយចិត្ត ឬក្រៀមក្រំ។ ទារកអាចយំច្រើន ឬ អសកម្ម។",
          score_3_local_definition: "ភាគច្រើន កុមាររូបនេះមានភាពរីករាយ ប៉ុន្តែម្តងម្កាលមានអារមណ៍រខ្វល់ខ្វាយ ឬគេចចេញពីគេ។ ទារកប្រហែលអាចយំ ឬគេងពុំសូវលក់ស្រួលនៅពេលខ្លះ។",
          score_4_local_definition: "កុមារ មើលទៅមានភាពរីករាយ ពេញចិត្ត និងមាន ក្តីសង្ឃឹម។"
        },
        {
          name: "5B",
          group: 5,
          local_description: "<p><span style=\"text-decoration: underline;\"><strong>កត្តា៖ ៥ខ (អាកប្បកិរិយាក្នុងសង្គម)</strong></span></p>\r\n<p><strong>គោលបំណង៖</strong> កុមារសហការ ហើយសប្បាយរីករាយក្នុងការចូលរួមធ្វើសកម្មភាពជាមួយមនុស្សពេញវ័យ និងកុមារផ្សេងៗទៀត។</p>\r\n<p><strong>សំនួរគំរូ៖</strong></p>\r\n<ul>\r\n<li>តើកុមាររូបនេះមានអាកប្បកិរិយាដូចម្តេច ចំពោះមនុស្សពេញវ័យ? តើគាត់ស្តាប់បង្គាប់ដែរឬទេ?</li>\r\n<li>ជារឿយៗ តើកុមាររូបនេះគោរពតាមវិន័យនៅផ្ទះ និងនៅសាលាបានល្អដែរឬទេ?</li>\r\n<li>តើកុមាររូបនេះមានលេងជាមួយក្មេងដទៃទៀត ឬមានមិត្តភ័ក្តិជិតស្និទ្ធដែរ រឺទេ? តើគាត់ មានភាពរីករាយជាមួយកុមារដទៃទៀតដែរ រឺទេ?</li>\r\n<li>តើគាត់វាយតប់ជាមួយកុមារដទៃទៀតដែរឬទេ?</li>\r\n<li>តើអ្នកព្រួយបារម្ភថា កុមាររូបនេះអាចមានបញ្ហាជាមួយកុមារផ្សេងទៀតនៅសាលារៀនដែររឺទេ?</li>\r\n<li>តើកុមាររូបនេះមានប្រតិកម្មដូចម្តេចជាមួយបុគ្គលិកគ្រប់គ្រងករណី?</li>\r\n</ul>\r\n<p><strong>ចំនុចដែលត្រូវសង្កេតមើលអំឡុងជំនួប៖</strong></p>\r\n<ul>\r\n<li>សង្កេតមើលការទំនាក់ទំនងរបស់កុមាររូបនេះជាមួយសមាជិកគ្រួសារ ដើម្បីឱ្យដឹងថាអាកប្បកិរិយារបស់គាត់មានលក្ខណៈ វិជ្ជមាន សមស្រប ហិង្សា រំខានគេឯង ឬមួយបង្កគ្រោះថ្នាក់។</li>\r\n<li>តើកុមាររូបនេះហាក់ដូចជាមិនសូវចូលរួមជាមួយអ្នកដទៃ ហើយចូលចិត្តនៅម្នាក់ឯងដែរឬទេ?</li>\r\n<li>តើមានសញ្ញាបង្ហាញថាកុមាររូបនេះមានអាកប្បកិរិយាផ្លូវភេទបែបគ្រោះថ្នាក់ និង​ឬប្រើប្រាស់គ្រឿងញៀន គ្រឿងស្រវឹង ដែរឬទេ (ឧទា.លូកលេងប្រដាប់ភេទខ្លួនឯងឬកុមារដទៃ ហូបស្រា បារី…)?</li>\r\n</ul>",
          score_1_local_definition: "កុមារមានបញ្ហាផ្នែកអាកប្បកិរិយា ដូចជាការលួច សកម្មភាពផ្លូវភេទមុនអាយុ និង/ឬ អាកប្បកិរិយារំខានផ្សេងទៀត។",
          score_2_local_definition: "កុមារមិនស្តាប់បង្គាប់មនុស្សចាស់ ហើយជាញឹកញាប់ច្រើនគ្មានទំនាក់ទំនងជាមួយកុមារៗស្រករគ្នា អ្នកអាណាព្យាបាល ឬ អ្នកដទៃទៀត នៅក្នុងគ្រួសារ រឺ នៅសាលា។",
          score_3_local_definition: "កុមារមានបញ្ហាតិចតួចក្នុងការចុះសំរុងជាមួយអ្នកដទៃ ហើយពេលខ្លះមានជំលោះ ឬ ឈានដល់ការវាយតប់គ្នា។",
          score_4_local_definition: "កុមារចូលចិត្តលេងជាមួយក្មេងៗដូចគ្នា និងចូលរួមសកម្មផ្សេងៗក្នុងក្រុម ឬ គ្រួសារ។"
        },
        {
          name: "6A",
          group: 6,
          local_description: "<p><span style=\"text-decoration: underline;\"><strong>កត្តា៖ ៦ក (ការប្រព្រឹត្ត) ការអភិវឌ្ឍផ្នែកចលករ និងពុទ្</strong></span></p>\r\n<p><strong>គោលបំណង៖</strong> កុមារកំពុងរីកចម្រើនយ៉ាងល្អក្នុងការក្រេបយកចំណេះដឹង និងជំនាញផ្សេងៗ ទាំងពេលនៅផ្ទះ នៅសាលា ក្នុងវគ្គបណ្តុះបណ្តាល ក្នុងការងារ ឬសកម្មភាពផ្សេងៗទៀតដែលផ្តល់ប្រយោជន៍សមស្របតាមអាយុគាត់។</p>\r\n<p><strong>សំនួរគំរូ៖</strong></p>\r\n<ul>\r\n<li>តើកុមារនេះកំពុងរីកចម្រើនលូតលាស់ដូចអ្វីដែលអ្នករំពឹងទុករឺទេ (ការដើរ ការនិយាយ ការអាន និងជំនាញផ្សេងទៀត..)?</li>\r\n<li>ដូចដែលអ្នករំពឹងទុកដូចនឹងកុមារផ្សេងៗទៀតដែលមានអាយុស្របាលគាត់/នាងដែររឺទេ?</li>\r\n<li>តើអ្នកព្រួយបារម្ភអំពីការប្រព្រឹត្ត ឬការសិក្សារបស់កុមារនេះ រឺទេ?</li>\r\n<li>តើកុមារឆាប់យល់ និងរៀនសូត្របានលឿនដែរ រឺទេ?</li>\r\n<li>តើលោកគ្រូ/អ្នកគ្រូមានរាយការណ៍អំពីការធ្វើល្អៗរបស់កុមារនៅសាលារៀន រឺទេ?</li>\r\n<li>តើគាត់/នាងធ្វើកិច្ចការផ្ទះបានល្អ រឺទេ? ឧទារហ៏ ដូចជា ការថែទាំសួនជាដើម។</li>\r\n<li>តើកុមារនឹងឡើងថ្នាក់ដូចអ្វីដែលបានរំពឹងទុកដែរទេ?</li>\r\n</ul>\r\n<p><strong>ចំនុចដែលត្រូវសង្កេតមើលអំឡុងជំនួប៖</strong></p>\r\n<ul>\r\n<li>ប្រសិនបើកុមារនេះមានវ័យជំទង់ សូមសួរកុមារអំពីវគ្គបណ្តុះបណ្តាល និងការរៀនជំនាញដែលមានប្រយោជន៍ដល់គាត់/នាង។</li>\r\n<li>ប្រសិនបើគាត់/នាងកំពុងនៅសិក្សា សូមសង្កេតលើការឆ្លើយតប នៅពេលដែលអ្នកសួរសំនួរអំពីចំណាត់ថា្នក់ និងការប្រព្រឹត្តនៅក្នុងថ្នាក់រៀនរបស់គាត់។</li>\r\n<li>ប្រសិនបើកុមារមានអាយុ៥ឆ្នាំ ឬក្មេងជាង ធ្វើការសង្កេតលើដំណើរការនៃការលូតលាស់របស់កុមារ (ឧ. ភាសា, ចលនា, ការរៀនសូត្រ) ហើយធ្វើការប្រៀបធៀបទៅនឹងការរំពឹងទុករបស់អ្នក សម្រាប់កុមារដែលមានអាយុស្រករគ្នា។</li>\r\n</ul>",
          score_1_local_definition: "កុមារមានបញ្ហាធ្ងន់ធ្ងរក្នុងការប្រព្រឹត្ត និងការសិក្សាក្នុងជីវិត ឬក៏ជំនាញអភិវឌ្ឍន៍។",
          score_2_local_definition: "កុមារមានការរីកចំរើនផ្នែកជំនាញយឹឺតយ៉ាវ និង/ឬ រៀនតាមពីក្រោយគេ។ ទារក ឬកុមារដែលសិក្សានៅថ្នាក់មត្តេយ្យកម្រិតទាប គាត់/នាងមានការរីកចំរើនផ្នែកជំនាញយឹឺតជាងកុមារដទៃទៀត។",
          score_3_local_definition: "កុមារកំពុងរៀនសូត្របានយ៉ាងល្អ និង​អភិវឌ្ឍបំណិនជីវិតល្អគួសម ប៉ុន្តែអ្នកថែទាំ គ្រូបង្រៀន ឬ អ្នកដឹកនាំផ្សេងទៀត មានការព្រួយបារម្ភខ្លះៗពីភាពរីកចម្រើនរបស់ពួកគាត់។",
          score_4_local_definition: "កុមារកំពុងសិក្សាររៀនសូត្របានយ៉ាងល្អ បំណិនជីវិតក៏កំពុងលូតលាស់ ហើយរីកចម្រើនដូចការរំពឹងទុករបស់អាណាព្យាបាល គ្រូបង្រៀន រឺ អ្នកដឹកនាំផ្សេងៗទៀត។"
        },
        {
          name: "6B",
          group: 6,
          local_description: "<p><span style=\"text-decoration: underline;\"><strong>កត្តា៖ ៦ខ ការអប់រំ នឹងការងារ</strong></span></p>\r\n<p><strong>គោលបំណង៖</strong> កុមារបានចុះឈ្មោះ ហើយចូលរៀនក្នុងសាលា ឬវគ្គបណ្តុះបណ្តាលជំនាញ ឬ ត្រូវបានគេឲ្យចូលរូមលេង រៀន សកម្មភាពផ្រេងៗ ឬការងារតាមអាយុសមស្របរបស់ពួកគេ។</p>\r\n<p><strong>សំនួរគំរូ៖</strong></p>\r\n<ul>\r\n<li>តើកុមារ (គាត់/នាង)បានរៀនចប់ថ្នាក់បមឋសិក្សាហើយ រឺក៏នៅកំពុងសិក្សា?</li>\r\n<li>សូមប្រាប់ខ្ញុំអំពីសាលារៀន ឬវគ្គបណ្តុះបណ្តាលរបស់កុមារ។</li>\r\n<li>តើនរណាជាអ្នកបង់ថ្លៃសាលា ទិញឯកសណ្ឋាននឹងសម្ភារសិក្សា?</li>\r\n<li>តើកុមារបានទៅរៀនទៀងទាត់ដែររឺទេ?</li>\r\n<li>តើញឹកញាប់ប៉ុណ្ណាដែលកុមារត្រូវខកខានមិនបានទៅសាលារៀនដោយហេតុផលណាមួយ?</li>\r\n<li>តើគាត់បានទៅធ្វើការទៀងទាត់ទេ?</li>\r\n</ul>\r\n<p><strong>ចំនុចដែលត្រូវសង្កេតមើលអំឡុងជំនួប៖</strong></p>\r\n<ul>\r\n<li>សង្កេតមើលអាកប្បកិរិរបស់កុមារក្នុងវ័យសិក្សា នៅក្រៅសាលា និងនៅសាលា។</li>\r\n<li>ប្រសិនបើអាច សូមធ្វើការសង្កេតលើឯកសណ្ឋានសាលា សម្ភារៈនិងការប្រើប្រាស់របស់របស់ទំាងនោះ។</li>\r\n<li>សម្រាប់ករណីជាទារក ឬកុមារថ្នាក់មត្តេយ្យកម្រិតទាប សូមសង្កេតមើល ថាតើគាត់បានចូលរួមក្នុងការលេង ឬការរៀនសូត្រជាមូយសមាជិកគ្រួសារណាមួយ ឬដែរទេ?</li>\r\n</ul>",
          score_1_local_definition: "កុមារមិនត្រូវបានយកទៅចុះឈ្មោះចូលរៀន ចូលរួមវគ្គបណ្តុះបណ្តាល ចូលរួមក្នុងសកម្មភាព ឬការងារណាមួយដែលមានប្រយោជន៍ ស័ក្តិសមនឹងអាយុរបស់គាត់ទេ។ សម្រាប់ករណីជាទារក រឺកុមារនៅថ្នាក់មត្តេយ្យកម្រិតទាប គឺគ្មានអ្នកលេងជាមួយ។",
          score_2_local_definition: "កុមារបានចុះឈ្មោះចូលរៀន ឬមានការងារធ្វើ ប៉ុន្តែគាត់កម្របានទៅសាលា ឬទៅធ្វើការណាស់។ សម្រាប់ករណីជាទារក រឺកុមារនៅថ្នាក់មត្តេយ្យកម្រិតទាប គឺកម្រមានអ្នកលេងជាមួយ។",
          score_3_local_definition: "កុមារបានចុះឈ្មោះចូលរៀន ឬចូលវគ្គបណ្តុះបណ្តាល ប៉ុន្តែ ចូលរៀន ឬមានវត្តមានមិនបានទៀងទាត់។ ពេលខ្លះ កុមារមានគេលេង ជា មួយ ប៉ុន្តែមិន ជារៀងរាល់ថ្ងៃ។",
          score_4_local_definition: "កុមារបានចុះឈ្មោះ និងបានចូលសាលា ឬចូលរួមវគ្គបណ្តុះបណ្តាលទៀងទាត់។ សម្រាប់ករណីជាទារក រឺកុមារ ថ្នាក់មត្តេយ្យកម្រិតទាប គាត់អាចលេងជាមួយអ្នកថែទាំបាន។ សម្រាប់កុមារដែលធំ គឺមានការងារសមស្រប ហើយចូលធ្វើការទៀតទាត់។"
        }
      ]

      domains.each do |domain|
        dm=Domain.find_by(name: domain[:name])
        if dm.present?
          dm.local_description = domain[:local_description]
          dm.score_1_local_definition = domain[:score_1_local_definition]
          dm.score_2_local_definition = domain[:score_2_local_definition]
          dm.score_3_local_definition = domain[:score_3_local_definition]
          dm.score_4_local_definition = domain[:score_4_local_definition]
          dm.save(validate:false)
          dm.update_columns('local_description' => domain[:local_description])
          dm.update_columns('score_1_local_definition' => domain[:score_1_local_definition])
          dm.update_columns('score_2_local_definition' => domain[:score_2_local_definition])
          dm.update_columns('score_3_local_definition' => domain[:score_3_local_definition])
          dm.update_columns('score_4_local_definition' => domain[:score_4_local_definition])
        end
      end
    end
  end
end
