<?php

namespace WEEEOpen\WEEEHire;

class Interview
{
	public $id;
	/** @noinspection PhpFullyQualifiedNameUsageInspection */
	/**
	 * @var $when \DateTime|null Date of the interview
	 */
	public $when = null;

	/**
	 * @var $status bool|null Approved or rejected after the interview
	 */
	public $status = null;
	/**
	 * @var $recruiter string|null Recruiter name
	 */
	public $recruiter = null;
	public $recruitertg = null;
	/**
	 * @var $answers string|null
	 */
	public $answers;
	public $hold;
}
