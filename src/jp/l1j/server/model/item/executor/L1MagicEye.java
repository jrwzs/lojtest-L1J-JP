/*
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package jp.l1j.server.model.item.executor;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import static jp.l1j.locale.I18N.*;
import jp.l1j.server.datatables.ItemTable;
import jp.l1j.server.model.instance.L1PcInstance;
import static jp.l1j.server.model.skill.L1SkillId.*;
import jp.l1j.server.packets.server.S_PacketBox;
import jp.l1j.server.packets.server.S_SkillSound;
import jp.l1j.server.utils.PerformanceTimer;

@XmlAccessorType(XmlAccessType.FIELD)
public class L1MagicEye {

	private static Logger _log = Logger.getLogger(L1MagicEye.class.getName());
	
	@XmlAccessorType(XmlAccessType.FIELD)
	@XmlRootElement(name = "ItemEffectList")
	private static class ItemEffectList implements Iterable<L1MagicEye> {
		@XmlElement(name = "Item")
		private List<L1MagicEye> _list;

		public Iterator<L1MagicEye> iterator() {
			return _list.iterator();
		}
	}

	@XmlAccessorType(XmlAccessType.FIELD)
	private static class Effect {
		@XmlAttribute(name = "SkillId")
		private int _skillId;
		
		private int getSkillId() {
			return _skillId;
		}
		
		@XmlAttribute(name = "Time")
		private int _time;
		
		private int getTime() {
			return _time;
		}
		
		@XmlAttribute(name = "GfxId")
		private int _gfxid;
		
		private int getGfxId() {
			return _gfxid;
		}
	}

	private static final String _path = "./data/xml/Item/MagicEye.xml";

	private static HashMap<Integer, L1MagicEye> _dataMap = new HashMap<Integer, L1MagicEye>();

	public static L1MagicEye get(int id) {
		return _dataMap.get(id);
	}

	@XmlAttribute(name = "ItemId")
	private int _itemId;

	private int getItemId() {
		return _itemId;
	}

	@XmlElement(name = "Effect")
	private Effect _effect;
	
	private Effect getEffect() {
		return _effect;
	}
	
	private boolean init() {
		if (ItemTable.getInstance().getTemplate(getItemId()) == null) {
			System.out.println(String.format(I18N_DOES_NOT_EXIST_ITEM_LIST, getItemId()));
			// %s ????????????????????????????????????????????????
			return false;
		}
//		Effect effect = getEffect();
//		if (SkillTable.getInstance().findBySkillId(effect.getSkillId()) == null) {
//			System.out.println(String.format(I18N_DOES_NOT_EXIST_SKILL_LIST, effec.getSkillId()));
//			// %s ????????????100%????????????????????????
//			return false;
//		}
		return true;
	}
	
	private static void loadXml(HashMap<Integer, L1MagicEye> dataMap) {
		PerformanceTimer timer = new PerformanceTimer();
		try {
			JAXBContext context = JAXBContext.newInstance(L1MagicEye.ItemEffectList.class);

			Unmarshaller um = context.createUnmarshaller();

			File file = new File(_path);
			ItemEffectList list = (ItemEffectList) um.unmarshal(file);

			for (L1MagicEye each : list) {
				if (each.init()) {
					dataMap.put(each.getItemId(), each);
				}
			}
		} catch (Exception e) {
			_log.log(Level.SEVERE, _path + "load failed.", e);
			System.exit(0);
		}
		System.out.println("loading magic eyes...OK! " + timer.elapsedTimeMillis() + "ms");
	}

	public static void load() {
		loadXml(_dataMap);
	}
	
	public static void reload() {
		HashMap<Integer, L1MagicEye> dataMap = new HashMap<Integer, L1MagicEye>();
		loadXml(dataMap);
		_dataMap = dataMap;
	}

	public boolean use(L1PcInstance pc) {
		Effect effect = getEffect();

		// ??????????????????????????????
		if (pc.hasSkillEffect(MAGIC_EYE_OF_ANTHARAS)) {
			pc.removeSkillEffect(MAGIC_EYE_OF_ANTHARAS);
		} else if (pc.hasSkillEffect(MAGIC_EYE_OF_FAFURION)) {
			pc.removeSkillEffect(MAGIC_EYE_OF_FAFURION);
		} else if (pc.hasSkillEffect(MAGIC_EYE_OF_LINDVIOR)) {
			pc.removeSkillEffect(MAGIC_EYE_OF_LINDVIOR);
		} else if (pc.hasSkillEffect(MAGIC_EYE_OF_VALAKAS)) {
			pc.removeSkillEffect(MAGIC_EYE_OF_VALAKAS);
		} else if (pc.hasSkillEffect(MAGIC_EYE_OF_BIRTH)) {
			pc.removeSkillEffect(MAGIC_EYE_OF_BIRTH);
		} else if (pc.hasSkillEffect(MAGIC_EYE_OF_SHAPE)) {
			pc.removeSkillEffect(MAGIC_EYE_OF_SHAPE);
		} else if (pc.hasSkillEffect(MAGIC_EYE_OF_LIFE)) {
			pc.removeSkillEffect(MAGIC_EYE_OF_LIFE);
		}

		if (effect.getSkillId() == MAGIC_EYE_OF_ANTHARAS) { // ???????????????
			pc.addResistHold(5);
			pc.addDodge((byte) 1); // ????????? + 10%
			pc.sendPackets(new S_PacketBox(S_PacketBox.DODGE_RATE_PLUS, pc.getDodge()));
		} else if (effect.getSkillId() == MAGIC_EYE_OF_FAFURION) { // ???????????????
			pc.addResistFreeze(5);
			// ????????????????????????????????? -50%(L1Magic?????????)
		} else if (effect.getSkillId() == MAGIC_EYE_OF_LINDVIOR) { // ???????????????
			pc.addResistSleep(5);
			// ???????????????SP +2(L1Magic?????????)
		} else if (effect.getSkillId() == MAGIC_EYE_OF_VALAKAS) { // ???????????????
			pc.addResistStun(5);
			// ??????????????????????????? +2(L1Attack?????????)
		} else if (effect.getSkillId() == MAGIC_EYE_OF_BIRTH) { // ???????????????
			pc.addResistHold(5);
			pc.addResistFreeze(5);
			pc.addDodge((byte) 1); // ????????? + 10%
			pc.sendPackets(new S_PacketBox(S_PacketBox.DODGE_RATE_PLUS, pc.getDodge()));
			// ????????????????????????????????? -50%(L1Magic?????????)
		} else if (effect.getSkillId() == MAGIC_EYE_OF_SHAPE) { // ???????????????
			pc.addResistHold(5);
			pc.addResistFreeze(5);
			pc.addResistSleep(5);
			pc.addDodge((byte) 1); // ????????? + 10%
			pc.sendPackets(new S_PacketBox(S_PacketBox.DODGE_RATE_PLUS, pc.getDodge()));
			// ????????????????????????????????? -50%(L1Magic?????????)
		} else if (effect.getSkillId() == MAGIC_EYE_OF_LIFE) { // ???????????????
			pc.addResistHold(5);
			pc.addResistFreeze(5);
			pc.addResistSleep(5);
			pc.addResistStun(5);
			pc.addDodge((byte) 1); // ????????? + 10%
			pc.sendPackets(new S_PacketBox(S_PacketBox.DODGE_RATE_PLUS, pc.getDodge()));
			// ?????????(L1Attack?????????)
			// ????????????????????????????????? -50%(L1Magic?????????)
			// ???????????????SP +2(L1Magic?????????)
			// ??????????????????????????? +2(L1Attack?????????)
		}
		pc.sendPackets(new S_SkillSound(pc.getId(), effect.getGfxId()));
		pc.broadcastPacket(new S_SkillSound(pc.getId(), effect.getGfxId()));
		pc.setSkillEffect(effect.getSkillId(), effect.getTime() * 1000);

		return true;
	}

}
