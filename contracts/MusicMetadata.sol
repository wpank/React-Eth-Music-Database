pragma solidity ^0.4.11;

contract MusicMetadata{

  Metadata[] public songs;

  struct Metadata{
    bytes32 title;
    bytes32 artist;
    bytes32 album;
    uint256 year;
    bytes32 songhash;
  }

  function addMetadata(bytes32 _title, bytes32 _artist, bytes32 _album, uint256 _year, bytes32 _songhash) returns (bool success){
    Metadata memory newMetadata;
    newMetadata.title = _title;
    newMetadata.artist = _artist;
    newMetadata.album = _album;
    newMetadata.year = _year;
    newMetadata.songhash = _songhash;

    songs.push(newMetadata);
    return true;
  }

  function getMetadata() constant returns (bytes32[], bytes32[], bytes32[], uint256[], bytes32[]){

    uint length = songs.length;

    bytes32[] memory titles = new bytes32[](length);
    bytes32[] memory artists = new bytes32[](length);
    bytes32[] memory albums = new bytes32[](length);
    uint256[] memory year = new uint256[](length);
    bytes32[] memory songhashes = new bytes32[](length);



    for (uint i = 0; i < songs.length; i++){
      Metadata memory currentMetadata;
      currentMetadata = songs[i];

      titles[i] = currentMetadata.title;
      artists[i] = currentMetadata.artist;
      albums[i] = currentMetadata.album;
      year[i] = currentMetadata.year;
      songhashes = new bytes32[](length);
    }

    return (titles, artists, albums, year, songhashes);
  }

}
