#!/bin/bash

BASE_URL="https://dumps.wikimedia.org/###LANG###wiki/latest/###LANG###wiki-latest-pages-articles-multistream.xml.bz2"
INDEX_URL="https://dumps.wikimedia.org/###LANG###wiki/latest/###LANG###wiki-latest-pages-articles-multistream-index.txt.bz2"

if [ $# == 0 ]
then
  echo "No languages specific, will use 'en' as default set. Normally just add the language codes you want to download."
  LANGS=(en)
else
  if [ $1 == 'full']
  then
    LANGS=(en de fr es ru ja nl it sv pl vi pt ar zh uk ca no fi cs hu ko sr id he fa th el hi ceb tr ro sw da eo lt sk bg sl eu et hr te nn gl simple ms bs lb ka is sq la az bn mk mr sh af tl cy lv ta jv sa be ast zh-yue ur hy kn ml ne sco mn pa sah my war vo min lmo new ht bpy br gu tg io pms su oc nap nds scn ku wa bar an ksh szl fy als ia ga yi mg km ce roa-tara am roa-rup map-bms bh bcl co cv dv nds-nl fo fur gan glk gu ilo pam csb lij li gv mi mt nah nrm se gd nov qu os ps pdc rm bat-smg sc si tt tk hsb uz vec wuu vls yo diq zh-min-nan zh-classical frp lad kw haw ang ln ie wo tpi crh nv jbo ay zea eml ky ig or cbk-zam arc rmy ab gn so kab ug stq udm ext mzn pap cu sd pcd as sn lo ba pnb iu got bo dsb chr hak om av bm zu pnt cr pih ss bi rw ch arz xh kl ik bug dz ts kv xal tw bxr ak ny za ff ha mwl xmf lez bjn mai gom lrc tyv vep nso kbd ltg rue pfl gag mhr ckb ace hif olo kaa myv azb ady jam tcy dty atj din lfn gor sat be-x-old bal pi pag to fiu-vro bgn khw ty kg ks tet na sm ee ti ve tn tum st fj lbe ki lg sg rn koi mrj krc mdf srn kbp inh)
  else
    LANGS=($*)
  fi
fi

if [ -f urllist.txt ]
then
  echo "Removing old urllist.txt"
  rm urllist.txt
fi

for i in ${LANGS[*]}
do
  echo "Adding URLs for wikipedia dump for language '${i}' to urllist.txt"
  echo $BASE_URL | sed -e "s/###LANG###/${i}/g" >> urllist.txt
  echo $INDEX_URL | sed -e "s/###LANG###/${i}/g" >> urllist.txt
done
