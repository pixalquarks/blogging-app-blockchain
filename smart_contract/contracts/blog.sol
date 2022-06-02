// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./blogpost.sol";

contract Blog {
    BlogPost[] public posts;

    function addPost(
        string memory _author,
        string memory _content,
        string memory _title,
        string memory _description,
        string[] memory _tags
    ) public {
        posts.push(new BlogPost(_author, _content, _title, _description, _tags));
    }

    function getPost(uint256 _index) public view returns (string memory) {
        return posts[_index].getContent();
    }
}
