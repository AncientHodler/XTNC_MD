#!/bin/bash
echo "Type the folder path where the directories have been created"
echo "Use this a format similar to this example:"
echo "/home/user/SSD/BlockchainData/XTNC_MD_Data"
read path

cd $path

sudo docker run -d -e CN=1 -p 33101:33101 -p 33102:33102 -p 33103:33103 -v $path/xtnc01:/XtendCash/SN_Data --name xtnc01 xtnc_md
sudo docker run -d -e CN=2 -p 33104:33104 -p 33105:33105 -p 33106:33106 -v $path/xtnc02:/XtendCash/SN_Data --name xtnc02 xtnc_md
sudo docker run -d -e CN=3 -p 33107:33107 -p 33108:33108 -p 33109:33109 -v $path/xtnc03:/XtendCash/SN_Data --name xtnc03 xtnc_md
sudo docker run -d -e CN=4 -p 33110:33110 -p 33111:33111 -p 33112:33112 -v $path/xtnc04:/XtendCash/SN_Data --name xtnc04 xtnc_md
sudo docker run -d -e CN=5 -p 33113:33113 -p 33114:33114 -p 33115:33115 -v $path/xtnc05:/XtendCash/SN_Data --name xtnc05 xtnc_md
sudo docker run -d -e CN=6 -p 33116:33116 -p 33117:33117 -p 33118:33118 -v $path/xtnc06:/XtendCash/SN_Data --name xtnc06 xtnc_md
sudo docker run -d -e CN=7 -p 33119:33119 -p 33120:33120 -p 33121:33121 -v $path/xtnc07:/XtendCash/SN_Data --name xtnc07 xtnc_md
sudo docker run -d -e CN=8 -p 33122:33122 -p 33126:33126 -p 33127:33127 -v $path/xtnc08:/XtendCash/SN_Data --name xtnc08 xtnc_md
sudo docker run -d -e CN=9 -p 33128:33128 -p 33129:33129 -p 33130:33130 -v $path/xtnc09:/XtendCash/SN_Data --name xtnc09 xtnc_md
sudo docker run -d -e CN=10 -p 33131:33131 -p 33132:33132 -p 33133:33133 -v $path/xtnc10:/XtendCash/SN_Data --name xtnc10 xtnc_md
sudo docker run -d -e CN=11 -p 33134:33134 -p 33135:33135 -p 33136:33136 -v $path/xtnc11:/XtendCash/SN_Data --name xtnc11 xtnc_md
sudo docker run -d -e CN=12 -p 33137:33137 -p 33138:33138 -p 33139:33139 -v $path/xtnc12:/XtendCash/SN_Data --name xtnc12 xtnc_md
sudo docker run -d -e CN=13 -p 33140:33140 -p 33141:33141 -p 33142:33142 -v $path/xtnc13:/XtendCash/SN_Data --name xtnc13 xtnc_md
sudo docker run -d -e CN=14 -p 33143:33143 -p 33144:33144 -p 33145:33145 -v $path/xtnc14:/XtendCash/SN_Data --name xtnc14 xtnc_md
sudo docker run -d -e CN=15 -p 33146:33146 -p 33147:33147 -p 33148:33148 -v $path/xtnc15:/XtendCash/SN_Data --name xtnc15 xtnc_md
sudo docker run -d -e CN=16 -p 33149:33149 -p 33150:33150 -p 33151:33151 -v $path/xtnc16:/XtendCash/SN_Data --name xtnc16 xtnc_md
sudo docker run -d -e CN=17 -p 33152:33152 -p 33153:33153 -p 33154:33154 -v $path/xtnc17:/XtendCash/SN_Data --name xtnc17 xtnc_md
sudo docker run -d -e CN=18 -p 33155:33155 -p 33156:33156 -p 33157:33157 -v $path/xtnc18:/XtendCash/SN_Data --name xtnc18 xtnc_md
sudo docker run -d -e CN=19 -p 33158:33158 -p 33159:33159 -p 33160:33160 -v $path/xtnc19:/XtendCash/SN_Data --name xtnc19 xtnc_md
sudo docker run -d -e CN=20 -p 33161:33161 -p 33162:33162 -p 33163:33163 -v $path/xtnc20:/XtendCash/SN_Data --name xtnc20 xtnc_md
sudo docker run -d -e CN=21 -p 33164:33164 -p 33165:33165 -p 33166:33166 -v $path/xtnc21:/XtendCash/SN_Data --name xtnc21 xtnc_md
sudo docker run -d -e CN=22 -p 33167:33167 -p 33168:33168 -p 33169:33169 -v $path/xtnc22:/XtendCash/SN_Data --name xtnc22 xtnc_md
sudo docker run -d -e CN=23 -p 33170:33170 -p 33171:33171 -p 33172:33172 -v $path/xtnc23:/XtendCash/SN_Data --name xtnc23 xtnc_md
sudo docker run -d -e CN=24 -p 33173:33173 -p 33174:33174 -p 33175:33175 -v $path/xtnc24:/XtendCash/SN_Data --name xtnc24 xtnc_md
sudo docker run -d -e CN=25 -p 33176:33176 -p 33177:33177 -p 33178:33178 -v $path/xtnc25:/XtendCash/SN_Data --name xtnc25 xtnc_md
sudo docker run -d -e CN=26 -p 33179:33179 -p 33180:33180 -p 33181:33181 -v $path/xtnc26:/XtendCash/SN_Data --name xtnc26 xtnc_md
sudo docker run -d -e CN=27 -p 33182:33182 -p 33183:33183 -p 33184:33184 -v $path/xtnc27:/XtendCash/SN_Data --name xtnc27 xtnc_md
sudo docker run -d -e CN=28 -p 33185:33185 -p 33186:33186 -p 33187:33187 -v $path/xtnc28:/XtendCash/SN_Data --name xtnc28 xtnc_md
sudo docker run -d -e CN=29 -p 33188:33188 -p 33189:33189 -p 33190:33190 -v $path/xtnc29:/XtendCash/SN_Data --name xtnc29 xtnc_md
sudo docker run -d -e CN=30 -p 33191:33191 -p 33192:33192 -p 33193:33193 -v $path/xtnc30:/XtendCash/SN_Data --name xtnc30 xtnc_md
sudo docker run -d -e CN=31 -p 33194:33194 -p 33195:33195 -p 33196:33196 -v $path/xtnc31:/XtendCash/SN_Data --name xtnc31 xtnc_md
sudo docker run -d -e CN=32 -p 33197:33197 -p 33198:33198 -p 33199:33199 -v $path/xtnc32:/XtendCash/SN_Data --name xtnc32 xtnc_md
sudo docker run -d -e CN=33 -p 33200:33200 -p 33201:33201 -p 33202:33202 -v $path/xtnc33:/XtendCash/SN_Data --name xtnc33 xtnc_md
sudo docker run -d -e CN=34 -p 33203:33203 -p 33204:33204 -p 33205:33205 -v $path/xtnc34:/XtendCash/SN_Data --name xtnc34 xtnc_md
sudo docker run -d -e CN=35 -p 33206:33206 -p 33207:33207 -p 33208:33208 -v $path/xtnc35:/XtendCash/SN_Data --name xtnc35 xtnc_md
sudo docker run -d -e CN=36 -p 33209:33209 -p 33210:33210 -p 33211:33211 -v $path/xtnc36:/XtendCash/SN_Data --name xtnc36 xtnc_md
sudo docker run -d -e CN=37 -p 33212:33212 -p 33213:33213 -p 33214:33214 -v $path/xtnc37:/XtendCash/SN_Data --name xtnc37 xtnc_md
sudo docker run -d -e CN=38 -p 33215:33215 -p 33216:33216 -p 33217:33217 -v $path/xtnc38:/XtendCash/SN_Data --name xtnc38 xtnc_md
sudo docker run -d -e CN=39 -p 33218:33218 -p 33219:33219 -p 33220:33220 -v $path/xtnc39:/XtendCash/SN_Data --name xtnc39 xtnc_md
sudo docker run -d -e CN=40 -p 33221:33221 -p 33222:33222 -p 33223:33223 -v $path/xtnc40:/XtendCash/SN_Data --name xtnc40 xtnc_md
sudo docker run -d -e CN=41 -p 33224:33224 -p 33225:33225 -p 33226:33226 -v $path/xtnc41:/XtendCash/SN_Data --name xtnc41 xtnc_md
sudo docker run -d -e CN=42 -p 33227:33227 -p 33228:33228 -p 33229:33229 -v $path/xtnc42:/XtendCash/SN_Data --name xtnc42 xtnc_md
sudo docker run -d -e CN=43 -p 33230:33230 -p 33231:33231 -p 33232:33232 -v $path/xtnc43:/XtendCash/SN_Data --name xtnc43 xtnc_md
sudo docker run -d -e CN=44 -p 33233:33233 -p 33234:33234 -p 33235:33235 -v $path/xtnc44:/XtendCash/SN_Data --name xtnc44 xtnc_md
sudo docker run -d -e CN=45 -p 33236:33236 -p 33237:33237 -p 33238:33238 -v $path/xtnc45:/XtendCash/SN_Data --name xtnc45 xtnc_md
sudo docker run -d -e CN=46 -p 33239:33239 -p 33240:33240 -p 33241:33241 -v $path/xtnc46:/XtendCash/SN_Data --name xtnc46 xtnc_md
sudo docker run -d -e CN=47 -p 33242:33242 -p 33243:33243 -p 33244:33244 -v $path/xtnc47:/XtendCash/SN_Data --name xtnc47 xtnc_md
sudo docker run -d -e CN=48 -p 33245:33245 -p 33246:33246 -p 33247:33247 -v $path/xtnc48:/XtendCash/SN_Data --name xtnc48 xtnc_md
sudo docker run -d -e CN=49 -p 33248:33248 -p 33249:33249 -p 33250:33250 -v $path/xtnc49:/XtendCash/SN_Data --name xtnc49 xtnc_md
sudo docker run -d -e CN=50 -p 33251:33251 -p 33252:33252 -p 33253:33253 -v $path/xtnc50:/XtendCash/SN_Data --name xtnc50 xtnc_md

