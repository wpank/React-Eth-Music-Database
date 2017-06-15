pragma solidity ^0.4.11;

contract MusicMetadata{

  Metadata[] public songs;

  struct Metadata{
    bytes32 title;
    bytes32 artist;
    bytes32 album;
    uint256 year;
    uint256 tracknumber;
    uint256 track;
    bytes32 encoder;
    bytes32 songhash;
  }

  function addMetadata(bytes32 _title, bytes32 _artist, bytes32 _album, uint256 _year, uint256 _tracknumber, uint256 _track, bytes32 _encoder, bytes32 _songhash) returns (bool success){
    Metadata memory newMetadata;
    newMetadata.title = _title;
    newMetadata.artist = _artist;
    newMetadata.album = _album;
    newMetadata.year = _year;
    newMetadata.tracknumber = _tracknumber;
    newMetadata.track = _track;
    newMetadata.encoder = _encoder;
    newMetadata.songhash = _songhash;

    songs.push(newMetadata);
    return true;
  }

}
