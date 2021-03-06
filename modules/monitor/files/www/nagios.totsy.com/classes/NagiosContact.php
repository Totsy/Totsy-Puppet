<?php



/**
 * Skeleton subclass for representing a row from the 'nagios_contact' table.
 *
 * Nagios Contact
 *
 * You should add additional methods to this class to meet the
 * application requirements.  This class will only be generated as
 * long as it does not already exist in the output directory.
 *
 * @package    propel.generator.
 */
class NagiosContact extends BaseNagiosContact {
	
	public function	setServiceNotificationPeriodByName($name) {
		$c = new Criteria();
		$c->add(NagiosTimeperiodPeer::NAME, $name);
		$timeperiod = NagiosTimeperiodPeer::doSelectOne($c);
		if(!empty($timeperiod)) {
			$this->setNagiosTimeperiodRelatedByServiceNotificationPeriod($timeperiod);
			return true;
		}
		return false;
	}

	public function	setHostNotificationPeriodByName($name) {
		$c = new Criteria();
		$c->add(NagiosTimeperiodPeer::NAME, $name);
		$timeperiod = NagiosTimeperiodPeer::doSelectOne($c);
		if(!empty($timeperiod)) {
			$this->setNagiosTimeperiodRelatedByHostNotificationPeriod($timeperiod);
			return true;
		}
		return false;
	}

	public function addServiceNotificationCommandByName($name) {
		$c = new Criteria();
		$c->add(NagiosCommandPeer::NAME, $name);
		$command = NagiosCommandPeer::doSelectOne($c);
		if(!empty($command)) {
			$notificationCommand = new NagiosContactNotificationCommand();
			$notificationCommand->setType("service");
			$notificationCommand->setNagiosContact($this);
			$notificationCommand->setNagiosCommand($command);
			$notificationCommand->save();
			return true;
		}
		return false;
	}

	public function addHostNotificationCommandByName($name) {
		$c = new Criteria();
		$c->add(NagiosCommandPeer::NAME, $name);
		$command = NagiosCommandPeer::doSelectOne($c);
		if(!empty($command)) {
			$notificationCommand = new NagiosContactNotificationCommand();
			$notificationCommand->setType("host");
			$notificationCommand->setNagiosContact($this);
			$notificationCommand->setNagiosCommand($command);
			$notificationCommand->save();
			return true;
		}
		return false;
	}

	public function joinNagiosContactGroupByName($name) {
		$c = new Criteria();
		$c->add(NagiosContactGroupPeer::NAME, $name);
		$group = NagiosContactGroupPeer::doSelectOne($c);
		if(!empty($group)) {
			$membership = new NagiosContactGroupMember();
			$membership->setNagiosContact($this);
			$membership->setNagiosContactGroup($group);
			$membership->save();
			return true;
		}
		return false;	
	}

	public function addAddress($text) {
		$address = new NagiosContactAddress();
		$address->setNagiosContact($this);
		$address->setAddress($text);
		$address->save();
		return true;
	}

} // NagiosContact
