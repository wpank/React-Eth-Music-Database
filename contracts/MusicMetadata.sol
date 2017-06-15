pragma solidity ^0.4.11;

contract MusicMetadata{

  struct Metadata{
    bytes32 title;
    bytes32 artist;
    bytes32 album;
    uint256 year;
    uint256 tracknumber;
    uint256 track;
    bytes32 encoder;
  }

}
