<?php


/**
 * Base class that represents a query for the 'nagios_contact_group_member' table.
 *
 * Member of a Nagios Contact Group
 *
 * @method     NagiosContactGroupMemberQuery orderById($order = Criteria::ASC) Order by the id column
 * @method     NagiosContactGroupMemberQuery orderByContact($order = Criteria::ASC) Order by the contact column
 * @method     NagiosContactGroupMemberQuery orderByContactgroup($order = Criteria::ASC) Order by the contactgroup column
 *
 * @method     NagiosContactGroupMemberQuery groupById() Group by the id column
 * @method     NagiosContactGroupMemberQuery groupByContact() Group by the contact column
 * @method     NagiosContactGroupMemberQuery groupByContactgroup() Group by the contactgroup column
 *
 * @method     NagiosContactGroupMemberQuery leftJoin($relation) Adds a LEFT JOIN clause to the query
 * @method     NagiosContactGroupMemberQuery rightJoin($relation) Adds a RIGHT JOIN clause to the query
 * @method     NagiosContactGroupMemberQuery innerJoin($relation) Adds a INNER JOIN clause to the query
 *
 * @method     NagiosContactGroupMemberQuery leftJoinNagiosContact($relationAlias = null) Adds a LEFT JOIN clause to the query using the NagiosContact relation
 * @method     NagiosContactGroupMemberQuery rightJoinNagiosContact($relationAlias = null) Adds a RIGHT JOIN clause to the query using the NagiosContact relation
 * @method     NagiosContactGroupMemberQuery innerJoinNagiosContact($relationAlias = null) Adds a INNER JOIN clause to the query using the NagiosContact relation
 *
 * @method     NagiosContactGroupMemberQuery leftJoinNagiosContactGroup($relationAlias = null) Adds a LEFT JOIN clause to the query using the NagiosContactGroup relation
 * @method     NagiosContactGroupMemberQuery rightJoinNagiosContactGroup($relationAlias = null) Adds a RIGHT JOIN clause to the query using the NagiosContactGroup relation
 * @method     NagiosContactGroupMemberQuery innerJoinNagiosContactGroup($relationAlias = null) Adds a INNER JOIN clause to the query using the NagiosContactGroup relation
 *
 * @method     NagiosContactGroupMember findOne(PropelPDO $con = null) Return the first NagiosContactGroupMember matching the query
 * @method     NagiosContactGroupMember findOneOrCreate(PropelPDO $con = null) Return the first NagiosContactGroupMember matching the query, or a new NagiosContactGroupMember object populated from the query conditions when no match is found
 *
 * @method     NagiosContactGroupMember findOneById(int $id) Return the first NagiosContactGroupMember filtered by the id column
 * @method     NagiosContactGroupMember findOneByContact(int $contact) Return the first NagiosContactGroupMember filtered by the contact column
 * @method     NagiosContactGroupMember findOneByContactgroup(int $contactgroup) Return the first NagiosContactGroupMember filtered by the contactgroup column
 *
 * @method     array findById(int $id) Return NagiosContactGroupMember objects filtered by the id column
 * @method     array findByContact(int $contact) Return NagiosContactGroupMember objects filtered by the contact column
 * @method     array findByContactgroup(int $contactgroup) Return NagiosContactGroupMember objects filtered by the contactgroup column
 *
 * @package    propel.generator..om
 */
abstract class BaseNagiosContactGroupMemberQuery extends ModelCriteria
{

	/**
	 * Initializes internal state of BaseNagiosContactGroupMemberQuery object.
	 *
	 * @param     string $dbName The dabase name
	 * @param     string $modelName The phpName of a model, e.g. 'Book'
	 * @param     string $modelAlias The alias for the model in this query, e.g. 'b'
	 */
	public function __construct($dbName = 'lilac', $modelName = 'NagiosContactGroupMember', $modelAlias = null)
	{
		parent::__construct($dbName, $modelName, $modelAlias);
	}

	/**
	 * Returns a new NagiosContactGroupMemberQuery object.
	 *
	 * @param     string $modelAlias The alias of a model in the query
	 * @param     Criteria $criteria Optional Criteria to build the query from
	 *
	 * @return    NagiosContactGroupMemberQuery
	 */
	public static function create($modelAlias = null, $criteria = null)
	{
		if ($criteria instanceof NagiosContactGroupMemberQuery) {
			return $criteria;
		}
		$query = new NagiosContactGroupMemberQuery();
		if (null !== $modelAlias) {
			$query->setModelAlias($modelAlias);
		}
		if ($criteria instanceof Criteria) {
			$query->mergeWith($criteria);
		}
		return $query;
	}

	/**
	 * Find object by primary key
	 * Use instance pooling to avoid a database query if the object exists
	 * <code>
	 * $obj  = $c->findPk(12, $con);
	 * </code>
	 * @param     mixed $key Primary key to use for the query
	 * @param     PropelPDO $con an optional connection object
	 *
	 * @return    NagiosContactGroupMember|array|mixed the result, formatted by the current formatter
	 */
	public function findPk($key, $con = null)
	{
		if ((null !== ($obj = NagiosContactGroupMemberPeer::getInstanceFromPool((string) $key))) && $this->getFormatter()->isObjectFormatter()) {
			// the object is alredy in the instance pool
			return $obj;
		} else {
			// the object has not been requested yet, or the formatter is not an object formatter
			$criteria = $this->isKeepQuery() ? clone $this : $this;
			$stmt = $criteria
				->filterByPrimaryKey($key)
				->getSelectStatement($con);
			return $criteria->getFormatter()->init($criteria)->formatOne($stmt);
		}
	}

	/**
	 * Find objects by primary key
	 * <code>
	 * $objs = $c->findPks(array(12, 56, 832), $con);
	 * </code>
	 * @param     array $keys Primary keys to use for the query
	 * @param     PropelPDO $con an optional connection object
	 *
	 * @return    PropelObjectCollection|array|mixed the list of results, formatted by the current formatter
	 */
	public function findPks($keys, $con = null)
	{
		$criteria = $this->isKeepQuery() ? clone $this : $this;
		return $this
			->filterByPrimaryKeys($keys)
			->find($con);
	}

	/**
	 * Filter the query by primary key
	 *
	 * @param     mixed $key Primary key to use for the query
	 *
	 * @return    NagiosContactGroupMemberQuery The current query, for fluid interface
	 */
	public function filterByPrimaryKey($key)
	{
		return $this->addUsingAlias(NagiosContactGroupMemberPeer::ID, $key, Criteria::EQUAL);
	}

	/**
	 * Filter the query by a list of primary keys
	 *
	 * @param     array $keys The list of primary key to use for the query
	 *
	 * @return    NagiosContactGroupMemberQuery The current query, for fluid interface
	 */
	public function filterByPrimaryKeys($keys)
	{
		return $this->addUsingAlias(NagiosContactGroupMemberPeer::ID, $keys, Criteria::IN);
	}

	/**
	 * Filter the query on the id column
	 * 
	 * Example usage:
	 * <code>
	 * $query->filterById(1234); // WHERE id = 1234
	 * $query->filterById(array(12, 34)); // WHERE id IN (12, 34)
	 * $query->filterById(array('min' => 12)); // WHERE id > 12
	 * </code>
	 *
	 * @param     mixed $id The value to use as filter.
	 *              Use scalar values for equality.
	 *              Use array values for in_array() equivalent.
	 *              Use associative array('min' => $minValue, 'max' => $maxValue) for intervals.
	 * @param     string $comparison Operator to use for the column comparison, defaults to Criteria::EQUAL
	 *
	 * @return    NagiosContactGroupMemberQuery The current query, for fluid interface
	 */
	public function filterById($id = null, $comparison = null)
	{
		if (is_array($id) && null === $comparison) {
			$comparison = Criteria::IN;
		}
		return $this->addUsingAlias(NagiosContactGroupMemberPeer::ID, $id, $comparison);
	}

	/**
	 * Filter the query on the contact column
	 * 
	 * Example usage:
	 * <code>
	 * $query->filterByContact(1234); // WHERE contact = 1234
	 * $query->filterByContact(array(12, 34)); // WHERE contact IN (12, 34)
	 * $query->filterByContact(array('min' => 12)); // WHERE contact > 12
	 * </code>
	 *
	 * @see       filterByNagiosContact()
	 *
	 * @param     mixed $contact The value to use as filter.
	 *              Use scalar values for equality.
	 *              Use array values for in_array() equivalent.
	 *              Use associative array('min' => $minValue, 'max' => $maxValue) for intervals.
	 * @param     string $comparison Operator to use for the column comparison, defaults to Criteria::EQUAL
	 *
	 * @return    NagiosContactGroupMemberQuery The current query, for fluid interface
	 */
	public function filterByContact($contact = null, $comparison = null)
	{
		if (is_array($contact)) {
			$useMinMax = false;
			if (isset($contact['min'])) {
				$this->addUsingAlias(NagiosContactGroupMemberPeer::CONTACT, $contact['min'], Criteria::GREATER_EQUAL);
				$useMinMax = true;
			}
			if (isset($contact['max'])) {
				$this->addUsingAlias(NagiosContactGroupMemberPeer::CONTACT, $contact['max'], Criteria::LESS_EQUAL);
				$useMinMax = true;
			}
			if ($useMinMax) {
				return $this;
			}
			if (null === $comparison) {
				$comparison = Criteria::IN;
			}
		}
		return $this->addUsingAlias(NagiosContactGroupMemberPeer::CONTACT, $contact, $comparison);
	}

	/**
	 * Filter the query on the contactgroup column
	 * 
	 * Example usage:
	 * <code>
	 * $query->filterByContactgroup(1234); // WHERE contactgroup = 1234
	 * $query->filterByContactgroup(array(12, 34)); // WHERE contactgroup IN (12, 34)
	 * $query->filterByContactgroup(array('min' => 12)); // WHERE contactgroup > 12
	 * </code>
	 *
	 * @see       filterByNagiosContactGroup()
	 *
	 * @param     mixed $contactgroup The value to use as filter.
	 *              Use scalar values for equality.
	 *              Use array values for in_array() equivalent.
	 *              Use associative array('min' => $minValue, 'max' => $maxValue) for intervals.
	 * @param     string $comparison Operator to use for the column comparison, defaults to Criteria::EQUAL
	 *
	 * @return    NagiosContactGroupMemberQuery The current query, for fluid interface
	 */
	public function filterByContactgroup($contactgroup = null, $comparison = null)
	{
		if (is_array($contactgroup)) {
			$useMinMax = false;
			if (isset($contactgroup['min'])) {
				$this->addUsingAlias(NagiosContactGroupMemberPeer::CONTACTGROUP, $contactgroup['min'], Criteria::GREATER_EQUAL);
				$useMinMax = true;
			}
			if (isset($contactgroup['max'])) {
				$this->addUsingAlias(NagiosContactGroupMemberPeer::CONTACTGROUP, $contactgroup['max'], Criteria::LESS_EQUAL);
				$useMinMax = true;
			}
			if ($useMinMax) {
				return $this;
			}
			if (null === $comparison) {
				$comparison = Criteria::IN;
			}
		}
		return $this->addUsingAlias(NagiosContactGroupMemberPeer::CONTACTGROUP, $contactgroup, $comparison);
	}

	/**
	 * Filter the query by a related NagiosContact object
	 *
	 * @param     NagiosContact|PropelCollection $nagiosContact The related object(s) to use as filter
	 * @param     string $comparison Operator to use for the column comparison, defaults to Criteria::EQUAL
	 *
	 * @return    NagiosContactGroupMemberQuery The current query, for fluid interface
	 */
	public function filterByNagiosContact($nagiosContact, $comparison = null)
	{
		if ($nagiosContact instanceof NagiosContact) {
			return $this
				->addUsingAlias(NagiosContactGroupMemberPeer::CONTACT, $nagiosContact->getId(), $comparison);
		} elseif ($nagiosContact instanceof PropelCollection) {
			if (null === $comparison) {
				$comparison = Criteria::IN;
			}
			return $this
				->addUsingAlias(NagiosContactGroupMemberPeer::CONTACT, $nagiosContact->toKeyValue('PrimaryKey', 'Id'), $comparison);
		} else {
			throw new PropelException('filterByNagiosContact() only accepts arguments of type NagiosContact or PropelCollection');
		}
	}

	/**
	 * Adds a JOIN clause to the query using the NagiosContact relation
	 * 
	 * @param     string $relationAlias optional alias for the relation
	 * @param     string $joinType Accepted values are null, 'left join', 'right join', 'inner join'
	 *
	 * @return    NagiosContactGroupMemberQuery The current query, for fluid interface
	 */
	public function joinNagiosContact($relationAlias = null, $joinType = Criteria::INNER_JOIN)
	{
		$tableMap = $this->getTableMap();
		$relationMap = $tableMap->getRelation('NagiosContact');
		
		// create a ModelJoin object for this join
		$join = new ModelJoin();
		$join->setJoinType($joinType);
		$join->setRelationMap($relationMap, $this->useAliasInSQL ? $this->getModelAlias() : null, $relationAlias);
		if ($previousJoin = $this->getPreviousJoin()) {
			$join->setPreviousJoin($previousJoin);
		}
		
		// add the ModelJoin to the current object
		if($relationAlias) {
			$this->addAlias($relationAlias, $relationMap->getRightTable()->getName());
			$this->addJoinObject($join, $relationAlias);
		} else {
			$this->addJoinObject($join, 'NagiosContact');
		}
		
		return $this;
	}

	/**
	 * Use the NagiosContact relation NagiosContact object
	 *
	 * @see       useQuery()
	 * 
	 * @param     string $relationAlias optional alias for the relation,
	 *                                   to be used as main alias in the secondary query
	 * @param     string $joinType Accepted values are null, 'left join', 'right join', 'inner join'
	 *
	 * @return    NagiosContactQuery A secondary query class using the current class as primary query
	 */
	public function useNagiosContactQuery($relationAlias = null, $joinType = Criteria::INNER_JOIN)
	{
		return $this
			->joinNagiosContact($relationAlias, $joinType)
			->useQuery($relationAlias ? $relationAlias : 'NagiosContact', 'NagiosContactQuery');
	}

	/**
	 * Filter the query by a related NagiosContactGroup object
	 *
	 * @param     NagiosContactGroup|PropelCollection $nagiosContactGroup The related object(s) to use as filter
	 * @param     string $comparison Operator to use for the column comparison, defaults to Criteria::EQUAL
	 *
	 * @return    NagiosContactGroupMemberQuery The current query, for fluid interface
	 */
	public function filterByNagiosContactGroup($nagiosContactGroup, $comparison = null)
	{
		if ($nagiosContactGroup instanceof NagiosContactGroup) {
			return $this
				->addUsingAlias(NagiosContactGroupMemberPeer::CONTACTGROUP, $nagiosContactGroup->getId(), $comparison);
		} elseif ($nagiosContactGroup instanceof PropelCollection) {
			if (null === $comparison) {
				$comparison = Criteria::IN;
			}
			return $this
				->addUsingAlias(NagiosContactGroupMemberPeer::CONTACTGROUP, $nagiosContactGroup->toKeyValue('PrimaryKey', 'Id'), $comparison);
		} else {
			throw new PropelException('filterByNagiosContactGroup() only accepts arguments of type NagiosContactGroup or PropelCollection');
		}
	}

	/**
	 * Adds a JOIN clause to the query using the NagiosContactGroup relation
	 * 
	 * @param     string $relationAlias optional alias for the relation
	 * @param     string $joinType Accepted values are null, 'left join', 'right join', 'inner join'
	 *
	 * @return    NagiosContactGroupMemberQuery The current query, for fluid interface
	 */
	public function joinNagiosContactGroup($relationAlias = null, $joinType = Criteria::INNER_JOIN)
	{
		$tableMap = $this->getTableMap();
		$relationMap = $tableMap->getRelation('NagiosContactGroup');
		
		// create a ModelJoin object for this join
		$join = new ModelJoin();
		$join->setJoinType($joinType);
		$join->setRelationMap($relationMap, $this->useAliasInSQL ? $this->getModelAlias() : null, $relationAlias);
		if ($previousJoin = $this->getPreviousJoin()) {
			$join->setPreviousJoin($previousJoin);
		}
		
		// add the ModelJoin to the current object
		if($relationAlias) {
			$this->addAlias($relationAlias, $relationMap->getRightTable()->getName());
			$this->addJoinObject($join, $relationAlias);
		} else {
			$this->addJoinObject($join, 'NagiosContactGroup');
		}
		
		return $this;
	}

	/**
	 * Use the NagiosContactGroup relation NagiosContactGroup object
	 *
	 * @see       useQuery()
	 * 
	 * @param     string $relationAlias optional alias for the relation,
	 *                                   to be used as main alias in the secondary query
	 * @param     string $joinType Accepted values are null, 'left join', 'right join', 'inner join'
	 *
	 * @return    NagiosContactGroupQuery A secondary query class using the current class as primary query
	 */
	public function useNagiosContactGroupQuery($relationAlias = null, $joinType = Criteria::INNER_JOIN)
	{
		return $this
			->joinNagiosContactGroup($relationAlias, $joinType)
			->useQuery($relationAlias ? $relationAlias : 'NagiosContactGroup', 'NagiosContactGroupQuery');
	}

	/**
	 * Exclude object from result
	 *
	 * @param     NagiosContactGroupMember $nagiosContactGroupMember Object to remove from the list of results
	 *
	 * @return    NagiosContactGroupMemberQuery The current query, for fluid interface
	 */
	public function prune($nagiosContactGroupMember = null)
	{
		if ($nagiosContactGroupMember) {
			$this->addUsingAlias(NagiosContactGroupMemberPeer::ID, $nagiosContactGroupMember->getId(), Criteria::NOT_EQUAL);
	  }
	  
		return $this;
	}

} // BaseNagiosContactGroupMemberQuery
