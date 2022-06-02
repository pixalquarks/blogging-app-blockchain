// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BlogPost {
    string author;
    string content;
    string title;
    string headImage;
    string description;
    string[] tags;
    uint256 createdAt;
    uint256 updatedAt;
    uint256 viewCount;

    constructor(
        string memory _author,
        string memory _content,
        string memory _title,
        string memory _headImage,
        string memory _description,
        string[] memory _tags
    ) {
        author = _author;
        content = _content;
        title = _title;
        headImage = _headImage;
        description = _description;
        tags = _tags;
        createdAt = block.timestamp;
        updatedAt = block.timestamp;
    }

    function updateDate() private {
        updatedAt = block.timestamp;
    }

    function getAuthor() public view returns (string memory) {
        return author;
    }

    function setAuthor(string memory _author) public {
        updateDate();
        author = _author;
    }

    function getContent() public view returns (string memory) {
        return content;
    }

    function setContent(string memory _content) public {
        updateDate();
        content = _content;
    }

    function getDate() public view returns (uint256) {
        return createdAt;
    }

    function getTitle() public view returns (string memory) {
        return title;
    }

    function setTitle(string memory _title) public {
        updateDate();
        title = _title;
    }
}
