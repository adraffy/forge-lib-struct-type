// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface I {
	function f() external pure returns (uint256);
}

struct S {
	I i;
}

library L {
	function g(S memory s) external pure returns (uint256) {
		return s.i.f();
	}
}

contract C {
	function h() external pure returns (uint256) {
		S memory s;
		return L.g(s);
	}
}
