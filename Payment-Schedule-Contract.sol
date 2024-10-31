# Palkeoramix decompiler. 

const unknown2763b8da = 0
const unknown3c4dfc82 = 10^14
const unknownbe406e6c = 20
const token = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48

def storage:
  stor0 is array of struct at storage 0
  stor1 is array of struct at storage 1
  ownerOf is mapping of addr at storage 2
  balanceOf is mapping of uint256 at storage 3
  approved is mapping of addr at storage 4
  stor5 is mapping of uint8 at storage 5
  tokenOfOwnerByIndex is mapping of uint256 at storage 6
  stor7 is mapping of uint256 at storage 7
  tokenByIndex is array of uint256 at storage 8
  stor9 is mapping of uint256 at storage 9
  owner is addr at storage 10
  totalMinted is uint256 at storage 11
  unknown19185d9b is mapping of struct at storage 12

def getApproved(uint256 _tokenId) payable: 
  require calldata.size - 4 >=ΓÇ▓ 32
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: invalid token ID'
  return approved[_tokenId]

def totalSupply() payable: 
  return tokenByIndex.length

def unknown19185d9b(uint256 _param1) payable: 
  require calldata.size - 4 >=ΓÇ▓ 32
  return unknown19185d9b[_param1].field_0, 
         unknown19185d9b[_param1].field_256,
         unknown19185d9b[_param1].field_512,
         unknown19185d9b[_param1].field_512,
         unknown19185d9b[_param1].field_592,
         unknown19185d9b[_param1].field_512

def tokenOfOwnerByIndex(address _owner, uint256 _index) payable: 
  require calldata.size - 4 >=ΓÇ▓ 64
  require _owner == _owner
  if not _owner:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: address zero is not a valid owner'
  if _index >= balanceOf[addr(_owner)]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
  return tokenOfOwnerByIndex[addr(_owner)][_index]

def tokenByIndex(uint256 _index) payable: 
  require calldata.size - 4 >=ΓÇ▓ 32
  if _index >= tokenByIndex.length:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
  return tokenByIndex[_index]

def ownerOf(uint256 _tokenId) payable: 
  require calldata.size - 4 >=ΓÇ▓ 32
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: invalid token ID'
  return ownerOf[_tokenId]

def balanceOf(address _owner) payable: 
  require calldata.size - 4 >=ΓÇ▓ 32
  require _owner == _owner
  if not _owner:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: address zero is not a valid owner'
  return balanceOf[addr(_owner)]

def owner() payable: 
  return owner

def totalMinted() payable: 
  return totalMinted

def isApprovedForAll(address _owner, address _operator) payable: 
  require calldata.size - 4 >=ΓÇ▓ 64
  require _owner == _owner
  require _operator == _operator
  return bool(stor5[addr(_owner)][addr(_operator)])

#
#  Regular functions
#

def _fallback() payable: # default function
  revert

def tokenURI(uint256 _tokenId) payable: 
  require calldata.size - 4 >=ΓÇ▓ 32
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: invalid token ID'
  return ''

def renounceOwnership() payable: 
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  owner = 0
  log OwnershipTransferred(
        address previousOwner=owner,
        address newOwner=0)

def transferOwnership(address _newOwner) payable: 
  require calldata.size - 4 >=ΓÇ▓ 32
  require _newOwner == _newOwner
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  if not _newOwner:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
  owner = _newOwner
  log OwnershipTransferred(
        address previousOwner=owner,
        address newOwner=_newOwner)

def unknown8cdd223a(uint256 _param1, uint256 _param2) payable: 
  require calldata.size - 4 >=ΓÇ▓ 64
  require _param2 == _param2 % 1099511627776
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  if unknown19185d9b[_param1].field_552 > _param2 % 1099511627776:
      revert with 3419821170
  unknown19185d9b[_param1].field_632 = _param2 % 1099511627776
  log 0xd607f547: _param1

def setApprovalForAll(address _to, bool _approved) payable: 
  require calldata.size - 4 >=ΓÇ▓ 64
  require _to == _to
  require _approved == _approved
  if not caller - _to:
      revert with 0, 'ERC721: approve to caller'
  stor5[caller][addr(_to)] = uint8(_approved)
  log ApprovalForAll(
        address owner=_approved,
        address operator=caller,
        bool approved=_to)

def supportsInterface(bytes4 _interfaceId) payable: 
  require calldata.size - 4 >=ΓÇ▓ 32
  require _interfaceId == Mask(32, 224, _interfaceId)
  if 0xc917499f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, _interfaceId):
      return True
  if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, _interfaceId):
      return True
  if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, _interfaceId):
      return True
  if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, _interfaceId):
      return True
  return (Mask(32, 224, _interfaceId) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)

def approve(address _spender, uint256 _value) payable: 
  require calldata.size - 4 >=ΓÇ▓ 64
  require _spender == _spender
  if not ownerOf[_value]:
      revert with 0, 'ERC721: invalid token ID'
  if not _spender - ownerOf[_value]:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
  if ownerOf[_value] != caller:
      if not stor5[stor2[_value]][caller]:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                      'ERC721: approve caller is not token owner or approved for all'
  approved[_value] = _spender
  if not ownerOf[_value]:
      revert with 0, 'ERC721: invalid token ID'
  log Approval(
        address tokenOwner=ownerOf[_value],
        address spender=_spender,
        uint256 tokens=_value)

def withdrawTokens() payable: 
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  mem[100] = this.address
  static call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  mem[96] = ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  mem[ceil32(return_data.size) + 132] = caller
  mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
  mem[ceil32(return_data.size) + 96] = 68
  mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, caller) >> 32
  mem[ceil32(return_data.size) + 128 len 4] = transfer(address to, uint256 tokens)
  mem[ceil32(return_data.size) + 196 len 96] = transfer(address to, uint256 tokens), caller, ext_call.return_datamem[ceil32(return_data.size) + 196 len 28]
  mem[ceil32(return_data.size) + 264] = 0
  call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.mem[ceil32(return_data.size) + 196 len 4] with:
       gas gas_remaining wei
      args mem[ceil32(return_data.size) + 200 len 64]
  if ext_call.success:
      log TokensWithdrawn(uint256 balance=ext_call.return_data
      stop
  if not return_data.size:
      if ext_call.return_data[0]:
          revert with memory
            from 128
             len ext_call.return_data[0]
  else:
      if return_data.size:
          revert with ext_call.return_data[0 len return_data.size]
  revert with 2428038168

def unknown7d33c323(uint256 _param1) payable: 
  require calldata.size - 4 >=ΓÇ▓ 32
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  if not ownerOf[_param1]:
      revert with 0, 'ERC721: invalid token ID'
  if not ownerOf[_param1]:
      stor9[_param1] = tokenByIndex.length
      tokenByIndex.length++
      tokenByIndex[tokenByIndex.length] = _param1
  else:
      if ownerOf[_param1]:
          if not ownerOf[_param1]:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: address zero is not a valid owner'
          if balanceOf[stor2[_param1]] - 1 > balanceOf[stor2[_param1]]:
              revert with 0, 17
          if balanceOf[stor2[_param1]] - 1 != stor7[_param1]:
              tokenOfOwnerByIndex[stor2[_param1]][stor7[_param1]] = tokenOfOwnerByIndex[stor2[_param1]][stor3[stor2[_param1]] - 1]
              stor7[stor6[stor2[_param1]][stor3[stor2[_param1]] - 1]] = stor7[_param1]
          stor7[_param1] = 0
          tokenOfOwnerByIndex[stor2[_param1]][stor3[stor2[_param1]] - 1] = 0
  if tokenByIndex.length - 1 > tokenByIndex.length:
      revert with 0, 17
  if tokenByIndex.length - 1 >= tokenByIndex.length:
      revert with 0, 50
  if stor9[_param1] >= tokenByIndex.length:
      revert with 0, 50
  tokenByIndex[stor9[_param1]] = tokenByIndex[tokenByIndex.length]
  stor9[stor8[stor8.length]] = stor9[_param1]
  stor9[_param1] = 0
  if not tokenByIndex.length:
      revert with 0, 49
  tokenByIndex[tokenByIndex.length] = 0
  tokenByIndex.length--
  if not ownerOf[_param1]:
      revert with 0, 'ERC721: invalid token ID'
  approved[_param1] = 0
  balanceOf[stor2[_param1]]--
  ownerOf[_param1] = 0
  log Transfer(
        address from=ownerOf[_param1],
        address to=0,
        uint256 tokens=_param1)
  log 0x40271a23: _param1

def burn(uint256 _value) payable: 
  require calldata.size - 4 >=ΓÇ▓ 32
  if not ownerOf[_value]:
      revert with 0, 'ERC721: invalid token ID'
  if ownerOf[_value] != caller:
      if not stor5[stor2[_value]][caller]:
          if not ownerOf[_value]:
              revert with 0, 'ERC721: invalid token ID'
          if approved[_value] != caller:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: caller is not token owner or approved'
  if not ownerOf[_value]:
      revert with 0, 'ERC721: invalid token ID'
  if not ownerOf[_value]:
      stor9[_value] = tokenByIndex.length
      tokenByIndex.length++
      tokenByIndex[tokenByIndex.length] = _value
  else:
      if ownerOf[_value]:
          if not ownerOf[_value]:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: address zero is not a valid owner'
          if balanceOf[stor2[_value]] - 1 > balanceOf[stor2[_value]]:
              revert with 0, 17
          if balanceOf[stor2[_value]] - 1 != stor7[_value]:
              tokenOfOwnerByIndex[stor2[_value]][stor7[_value]] = tokenOfOwnerByIndex[stor2[_value]][stor3[stor2[_value]] - 1]
              stor7[stor6[stor2[_value]][stor3[stor2[_value]] - 1]] = stor7[_value]
          stor7[_value] = 0
          tokenOfOwnerByIndex[stor2[_value]][stor3[stor2[_value]] - 1] = 0
  if tokenByIndex.length - 1 > tokenByIndex.length:
      revert with 0, 17
  if tokenByIndex.length - 1 >= tokenByIndex.length:
      revert with 0, 50
  if stor9[_value] >= tokenByIndex.length:
      revert with 0, 50
  tokenByIndex[stor9[_value]] = tokenByIndex[tokenByIndex.length]
  stor9[stor8[stor8.length]] = stor9[_value]
  stor9[_value] = 0
  if not tokenByIndex.length:
      revert with 0, 49
  tokenByIndex[tokenByIndex.length] = 0
  tokenByIndex.length--
  if not ownerOf[_value]:
      revert with 0, 'ERC721: invalid token ID'
  approved[_value] = 0
  balanceOf[stor2[_value]]--
  ownerOf[_value] = 0
  log Transfer(
        address from=ownerOf[_value],
        address to=0,
        uint256 tokens=_value)

def unknown02634c67(uint256 _param1, uint256 _param2, uint256 _param3, uint256 _param4, uint256 _param5) payable: 
  require calldata.size - 4 >=ΓÇ▓ 160
  require _param1 == _param1 % 1099511627776
  require _param2 == _param2 % 1099511627776
  require _param3 == _param3 % 1099511627776
  require _param4 == addr(_param4)
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  if _param1 % 1099511627776 > _param3 % 1099511627776:
      revert with 3419821170
  if not -_param5:
      revert with 1551001511
  if _param2 % 1099511627776 > _param3 % 1099511627776:
      revert with 1264702706
  if not _param4 << 96:
      revert with 3643679549
  if not totalMinted + 1:
      revert with 0, 17
  totalMinted++
  unknown19185d9b[stor11].field_0 = 0
  unknown19185d9b[stor11].field_256 = _param5
  unknown19185d9b[stor11].field_512 = _param1 % 1099511627776
  unknown19185d9b[stor11].field_552 = _param1 % 1099511627776
  unknown19185d9b[stor11].field_592 = _param2 % 1099511627776
  unknown19185d9b[stor11].field_632 = _param3 % 1099511627776
  if not addr(_param4):
      revert with 0, 'ERC721: mint to the zero address'
  if ownerOf[stor11]:
      revert with 0, 'ERC721: token already minted'
  stor9[stor11] = tokenByIndex.length
  tokenByIndex.length++
  tokenByIndex[tokenByIndex.length] = totalMinted
  if addr(_param4):
      if addr(_param4):
          if not addr(_param4):
              revert with 0, 'ERC721: address zero is not a valid owner'
          tokenOfOwnerByIndex[addr(_param4)][stor3[addr(_param4)]] = totalMinted
          stor7[stor11] = balanceOf[addr(_param4)]
  else:
      if tokenByIndex.length - 1 > tokenByIndex.length:
          revert with 0, 17
      if tokenByIndex.length - 1 >= tokenByIndex.length:
          revert with 0, 50
      if stor9[stor11] >= tokenByIndex.length:
          revert with 0, 50
      tokenByIndex[stor9[stor11]] = tokenByIndex[tokenByIndex.length]
      stor9[stor8[stor8.length]] = stor9[stor11]
      stor9[stor11] = 0
      if not tokenByIndex.length:
          revert with 0, 49
      tokenByIndex[tokenByIndex.length] = 0
      tokenByIndex.length--
  if ownerOf[stor11]:
      revert with 0, 'ERC721: token already minted'
  balanceOf[addr(_param4)]++
  ownerOf[stor11] = addr(_param4)
  log Transfer(
        address from=0,
        address to=addr(_param4),
        uint256 tokens=totalMinted)
  log 0x3056c83b: totalMinted

def transferFrom(address _from, address _to, uint256 _value) payable: 
  require calldata.size - 4 >=ΓÇ▓ 96
  require _from == _from
  require _to == _to
  if not ownerOf[_value]:
      revert with 0, 'ERC721: invalid token ID'
  if ownerOf[_value] != caller:
      if not stor5[stor2[_value]][caller]:
          if not ownerOf[_value]:
              revert with 0, 'ERC721: invalid token ID'
          if approved[_value] != caller:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: caller is not token owner or approved'
  if not ownerOf[_value]:
      revert with 0, 'ERC721: invalid token ID'
  if ownerOf[_value] != _from:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
  if not _to:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
  if not _from:
      stor9[_value] = tokenByIndex.length
      tokenByIndex.length++
      tokenByIndex[tokenByIndex.length] = _value
  else:
      if _from != _to:
          if not _from:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: address zero is not a valid owner'
          if balanceOf[addr(_from)] - 1 > balanceOf[addr(_from)]:
              revert with 0, 17
          if balanceOf[addr(_from)] - 1 != stor7[_value]:
              tokenOfOwnerByIndex[addr(_from)][stor7[_value]] = tokenOfOwnerByIndex[addr(_from)][stor3[addr(_from)] - 1]
              stor7[stor6[addr(_from)][stor3[addr(_from)] - 1]] = stor7[_value]
          stor7[_value] = 0
          tokenOfOwnerByIndex[addr(_from)][stor3[addr(_from)] - 1] = 0
  if _to:
      if _to != _from:
          if not _to:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: address zero is not a valid owner'
          tokenOfOwnerByIndex[addr(_to)][stor3[addr(_to)]] = _value
          stor7[_value] = balanceOf[addr(_to)]
  else:
      if tokenByIndex.length - 1 > tokenByIndex.length:
          revert with 0, 17
      if tokenByIndex.length - 1 >= tokenByIndex.length:
          revert with 0, 50
      if stor9[_value] >= tokenByIndex.length:
          revert with 0, 50
      tokenByIndex[stor9[_value]] = tokenByIndex[tokenByIndex.length]
      stor9[stor8[stor8.length]] = stor9[_value]
      stor9[_value] = 0
      if not tokenByIndex.length:
          revert with 0, 49
      tokenByIndex[tokenByIndex.length] = 0
      tokenByIndex.length--
  if not ownerOf[_value]:
      revert with 0, 'ERC721: invalid token ID'
  if ownerOf[_value] != _from:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
  approved[_value] = 0
  balanceOf[addr(_from)]--
  balanceOf[_to]++
  ownerOf[_value] = _to
  log Transfer(
        address from=_from,
        address to=_to,
        uint256 tokens=_value)

def unknowneb804416(uint256 _param1, uint256 _param2, uint256 _param3) payable: 
  require calldata.size - 4 >=ΓÇ▓ 96
  require _param1 == addr(_param1)
  require _param2 == addr(_param2)
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  if not ownerOf[_param3]:
      revert with 0, 'ERC721: invalid token ID'
  if ownerOf[_param3] != addr(_param1):
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
  if not addr(_param2):
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
  if not addr(_param1):
      stor9[_param3] = tokenByIndex.length
      tokenByIndex.length++
      tokenByIndex[tokenByIndex.length] = _param3
  else:
      if addr(_param1) != addr(_param2):
          if not addr(_param1):
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: address zero is not a valid owner'
          if balanceOf[addr(_param1)] - 1 > balanceOf[addr(_param1)]:
              revert with 0, 17
          if balanceOf[addr(_param1)] - 1 != stor7[_param3]:
              tokenOfOwnerByIndex[addr(_param1)][stor7[_param3]] = tokenOfOwnerByIndex[addr(_param1)][stor3[addr(_param1)] - 1]
              stor7[stor6[addr(_param1)][stor3[addr(_param1)] - 1]] = stor7[_param3]
          stor7[_param3] = 0
          tokenOfOwnerByIndex[addr(_param1)][stor3[addr(_param1)] - 1] = 0
  if addr(_param2):
      if addr(_param2) != addr(_param1):
          if not addr(_param2):
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: address zero is not a valid owner'
          tokenOfOwnerByIndex[addr(_param2)][stor3[addr(_param2)]] = _param3
          stor7[_param3] = balanceOf[addr(_param2)]
  else:
      if tokenByIndex.length - 1 > tokenByIndex.length:
          revert with 0, 17
      if tokenByIndex.length - 1 >= tokenByIndex.length:
          revert with 0, 50
      if stor9[_param3] >= tokenByIndex.length:
          revert with 0, 50
      tokenByIndex[stor9[_param3]] = tokenByIndex[tokenByIndex.length]
      stor9[stor8[stor8.length]] = stor9[_param3]
      stor9[_param3] = 0
      if not tokenByIndex.length:
          revert with 0, 49
      tokenByIndex[tokenByIndex.length] = 0
      tokenByIndex.length--
  if not ownerOf[_param3]:
      revert with 0, 'ERC721: invalid token ID'
  if ownerOf[_param3] != addr(_param1):
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
  approved[_param3] = 0
  balanceOf[addr(_param1)]--
  balanceOf[addr(_param2)]++
  ownerOf[_param3] = addr(_param2)
  log Transfer(
        address from=addr(_param1),
        address to=addr(_param2),
        uint256 tokens=_param3)
  log 0xf5142052: addr(_param1), addr(_param2), _param3

def safeTransferFrom(address _from, address _to, uint256 _tokenId) payable: 
  require calldata.size - 4 >=ΓÇ▓ 96
  require _from == _from
  require _to == _to
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: invalid token ID'
  if ownerOf[_tokenId] != caller:
      if not stor5[stor2[_tokenId]][caller]:
          if not ownerOf[_tokenId]:
              revert with 0, 'ERC721: invalid token ID'
          if approved[_tokenId] != caller:
              revert with 0, 'ERC721: caller is not token owner or approved'
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: invalid token ID'
  if ownerOf[_tokenId] != _from:
      revert with 0, 'ERC721: transfer from incorrect owner'
  if not _to:
      revert with 0, 'ERC721: transfer to the zero address'
  if not _from:
      stor9[_tokenId] = tokenByIndex.length
      tokenByIndex.length++
      tokenByIndex[tokenByIndex.length] = _tokenId
  else:
      if _from != _to:
          if not _from:
              revert with 0, 'ERC721: address zero is not a valid owner'
          if balanceOf[addr(_from)] - 1 > balanceOf[addr(_from)]:
              revert with 0, 17
          if balanceOf[addr(_from)] - 1 != stor7[_tokenId]:
              tokenOfOwnerByIndex[addr(_from)][stor7[_tokenId]] = tokenOfOwnerByIndex[addr(_from)][stor3[addr(_from)] - 1]
              stor7[stor6[addr(_from)][stor3[addr(_from)] - 1]] = stor7[_tokenId]
          stor7[_tokenId] = 0
          tokenOfOwnerByIndex[addr(_from)][stor3[addr(_from)] - 1] = 0
  if _to:
      if _to != _from:
          if not _to:
              revert with 0, 'ERC721: address zero is not a valid owner'
          tokenOfOwnerByIndex[addr(_to)][stor3[addr(_to)]] = _tokenId
          stor7[_tokenId] = balanceOf[addr(_to)]
  else:
      if tokenByIndex.length - 1 > tokenByIndex.length:
          revert with 0, 17
      if tokenByIndex.length - 1 >= tokenByIndex.length:
          revert with 0, 50
      if stor9[_tokenId] >= tokenByIndex.length:
          revert with 0, 50
      tokenByIndex[stor9[_tokenId]] = tokenByIndex[tokenByIndex.length]
      stor9[stor8[stor8.length]] = stor9[_tokenId]
      stor9[_tokenId] = 0
      if not tokenByIndex.length:
          revert with 0, 49
      tokenByIndex[tokenByIndex.length] = 0
      tokenByIndex.length--
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: invalid token ID'
  if ownerOf[_tokenId] != _from:
      revert with 0, 'ERC721: transfer from incorrect owner'
  approved[_tokenId] = 0
  balanceOf[addr(_from)]--
  balanceOf[_to]++
  ownerOf[_tokenId] = _to
  log Transfer(
        address from=_from,
        address to=_to,
        uint256 tokens=_tokenId)
  if ext_code.size(_to):
      call _to.onERC721Received(address operator, address from, uint256 childTokenId, bytes data) with:
           gas gas_remaining wei
          args 0, uint32(caller), addr(_from), _tokenId, 128, 0
      if not ext_call.success:
          if not return_data.size:
              revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
          if not -return_data.size:
              revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == Mask(32, 224, ext_call.return_data[0])
      if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
          revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'

def safeTransferFrom(address _from, address _to, uint256 _tokenId, bytes _data) payable: 
  require calldata.size - 4 >=ΓÇ▓ 128
  require _from == _from
  require _to == _to
  require _data <= 18446744073709551615
  require _data + 35 <ΓÇ▓ calldata.size
  if _data.length > 18446744073709551615:
      revert with 0, 65
  if ceil32(ceil32(_data.length)) + 97 < 96 or ceil32(ceil32(_data.length)) + 97 > 18446744073709551615:
      revert with 0, 65
  require _data + _data.length + 36 <= calldata.size
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: invalid token ID'
  if ownerOf[_tokenId] != caller:
      if not stor5[stor2[_tokenId]][caller]:
          if not ownerOf[_tokenId]:
              revert with 0, 'ERC721: invalid token ID'
          if approved[_tokenId] != caller:
              revert with 0, 'ERC721: caller is not token owner or approved'
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: invalid token ID'
  if ownerOf[_tokenId] != _from:
      revert with 0, 'ERC721: transfer from incorrect owner'
  if not _to:
      revert with 0, 'ERC721: transfer to the zero address'
  if not _from:
      stor9[_tokenId] = tokenByIndex.length
      tokenByIndex.length++
      tokenByIndex[tokenByIndex.length] = _tokenId
  else:
      if _from != _to:
          if not _from:
              revert with 0, 'ERC721: address zero is not a valid owner'
          if balanceOf[addr(_from)] - 1 > balanceOf[addr(_from)]:
              revert with 0, 17
          if balanceOf[addr(_from)] - 1 != stor7[_tokenId]:
              tokenOfOwnerByIndex[addr(_from)][stor7[_tokenId]] = tokenOfOwnerByIndex[addr(_from)][stor3[addr(_from)] - 1]
              stor7[stor6[addr(_from)][stor3[addr(_from)] - 1]] = stor7[_tokenId]
          stor7[_tokenId] = 0
          tokenOfOwnerByIndex[addr(_from)][stor3[addr(_from)] - 1] = 0
  if _to:
      if _to != _from:
          if not _to:
              revert with 0, 'ERC721: address zero is not a valid owner'
          tokenOfOwnerByIndex[addr(_to)][stor3[addr(_to)]] = _tokenId
          stor7[_tokenId] = balanceOf[addr(_to)]
  else:
      if tokenByIndex.length - 1 > tokenByIndex.length:
          revert with 0, 17
      if tokenByIndex.length - 1 >= tokenByIndex.length:
          revert with 0, 50
      if stor9[_tokenId] >= tokenByIndex.length:
          revert with 0, 50
      tokenByIndex[stor9[_tokenId]] = tokenByIndex[tokenByIndex.length]
      stor9[stor8[stor8.length]] = stor9[_tokenId]
      stor9[_tokenId] = 0
      if not tokenByIndex.length:
          revert with 0, 49
      tokenByIndex[tokenByIndex.length] = 0
      tokenByIndex.length--
  if not ownerOf[_tokenId]:
      revert with 0, 'ERC721: invalid token ID'
  if ownerOf[_tokenId] != _from:
      revert with 0, 'ERC721: transfer from incorrect owner'
  approved[_tokenId] = 0
  balanceOf[addr(_from)]--
  balanceOf[_to]++
  ownerOf[_tokenId] = _to
  log Transfer(
        address from=_from,
        address to=_to,
        uint256 tokens=_tokenId)
  if ext_code.size(_to):
      call _to.onERC721Received(address operator, address from, uint256 childTokenId, bytes data) with:
           gas gas_remaining wei
          args caller, addr(_from), _tokenId, Array(len=_data.length, data=_data[all])
      if not ext_call.success:
          if not return_data.size:
              if not -_data.length:
                  revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
              revert with _data[all]
          if not -return_data.size:
              revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == Mask(32, 224, ext_call.return_data[0])
      if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
          revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'

def name() payable: 
  if bool(stor0.length):
      if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
          revert with 0, 34
      if bool(stor0.length):
          if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
              revert with 0, 34
          if Mask(256, -1, stor0.length):
              if 31 < uint255(stor0.length) * 0.5:
                  mem[128] = uint256(stor0.field_0)
                  idx = 128
                  s = 0
                  while (uint255(stor0.length) * 0.5) + 96 > idx:
                      mem[idx + 32] = stor0[s].field_256
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
              mem[128] = 256 * stor0.length.field_8
      else:
          if not bool(stor0.length) - (stor0.length.field_1 < 32):
              revert with 0, 34
          if stor0.length.field_1:
              if 31 < stor0.length.field_1:
                  mem[128] = uint256(stor0.field_0)
                  idx = 128
                  s = 0
                  while stor0.length.field_1 + 96 > idx:
                      mem[idx + 32] = stor0[s].field_256
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
              mem[128] = 256 * stor0.length.field_8
      mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
      mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
      return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
  if not bool(stor0.length) - (stor0.length.field_1 < 32):
      revert with 0, 34
  if bool(stor0.length):
      if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
          revert with 0, 34
      if Mask(256, -1, stor0.length):
          if 31 < uint255(stor0.length) * 0.5:
              mem[128] = uint256(stor0.field_0)
              idx = 128
              s = 0
              while (uint255(stor0.length) * 0.5) + 96 > idx:
                  mem[idx + 32] = stor0[s].field_256
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
          mem[128] = 256 * stor0.length.field_8
  else:
      if not bool(stor0.length) - (stor0.length.field_1 < 32):
          revert with 0, 34
      if stor0.length.field_1:
          if 31 < stor0.length.field_1:
              mem[128] = uint256(stor0.field_0)
              idx = 128
              s = 0
              while stor0.length.field_1 + 96 > idx:
                  mem[idx + 32] = stor0[s].field_256
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
          mem[128] = 256 * stor0.length.field_8
  mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
  mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
  return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 

def symbol() payable: 
  if bool(stor1.length):
      if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
          revert with 0, 34
      if bool(stor1.length):
          if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
              revert with 0, 34
          if Mask(256, -1, stor1.length):
              if 31 < uint255(stor1.length) * 0.5:
                  mem[128] = uint256(stor1.field_0)
                  idx = 128
                  s = 0
                  while (uint255(stor1.length) * 0.5) + 96 > idx:
                      mem[idx + 32] = stor1[s].field_256
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
              mem[128] = 256 * stor1.length.field_8
      else:
          if not bool(stor1.length) - (stor1.length.field_1 < 32):
              revert with 0, 34
          if stor1.length.field_1:
              if 31 < stor1.length.field_1:
                  mem[128] = uint256(stor1.field_0)
                  idx = 128
                  s = 0
                  while stor1.length.field_1 + 96 > idx:
                      mem[idx + 32] = stor1[s].field_256
                      idx = idx + 32
                      s = s + 1
                      continue 
                  return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
              mem[128] = 256 * stor1.length.field_8
      mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
      mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
      return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
  if not bool(stor1.length) - (stor1.length.field_1 < 32):
      revert with 0, 34
  if bool(stor1.length):
      if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
          revert with 0, 34
      if Mask(256, -1, stor1.length):
          if 31 < uint255(stor1.length) * 0.5:
              mem[128] = uint256(stor1.field_0)
              idx = 128
              s = 0
              while (uint255(stor1.length) * 0.5) + 96 > idx:
                  mem[idx + 32] = stor1[s].field_256
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
          mem[128] = 256 * stor1.length.field_8
  else:
      if not bool(stor1.length) - (stor1.length.field_1 < 32):
          revert with 0, 34
      if stor1.length.field_1:
          if 31 < stor1.length.field_1:
              mem[128] = uint256(stor1.field_0)
              idx = 128
              s = 0
              while stor1.length.field_1 + 96 > idx:
                  mem[idx + 32] = stor1[s].field_256
                  idx = idx + 32
                  s = s + 1
                  continue 
              return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
          mem[128] = 256 * stor1.length.field_8
  mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
  mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
  return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 

def pay(address _payee) payable: 
  mem[64] = 96
  require calldata.size - 4 >=ΓÇ▓ 32
  require _payee == _payee
  if not _payee:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: address zero is not a valid owner'
  mem[0] = _payee
  mem[32] = 3
  if not -balanceOf[addr(_payee)]:
      revert with 415995818
  idx = 0
  while idx < balanceOf[addr(_payee)]:
      if not _payee:
          revert with 0, 'ERC721: address zero is not a valid owner'
      if idx >= balanceOf[addr(_payee)]:
          revert with 0, 'ERC721Enumerable: owner index out of bounds'
      mem[0] = tokenOfOwnerByIndex[addr(_payee)][idx]
      mem[32] = 12
      if block.timestamp < unknown19185d9b[stor6[addr(_payee)][idx]].field_592:
          log 0x90514912: tokenOfOwnerByIndex[addr(_payee)][idx]
          idx = idx + 1
          continue 
      if block.timestamp < unknown19185d9b[stor6[addr(_payee)][idx]].field_552:
          idx = idx + 1
          continue 
      if block.timestamp <= unknown19185d9b[stor6[addr(_payee)][idx]].field_632:
          if block.timestamp - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 > block.timestamp:
              revert with 0, 17
          if unknown19185d9b[stor6[addr(_payee)][idx]].field_256 != (block.timestamp * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) - (unknown19185d9b[stor6[addr(_payee)][idx]].field_552 * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) / block.timestamp - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 and block.timestamp - unknown19185d9b[stor6[addr(_payee)][idx]].field_552:
              revert with 0, 17
          if ((block.timestamp * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) - (unknown19185d9b[stor6[addr(_payee)][idx]].field_552 * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) / 10^14) - unknown19185d9b[stor6[addr(_payee)][idx]].field_0 > (block.timestamp * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) - (unknown19185d9b[stor6[addr(_payee)][idx]].field_552 * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) / 10^14:
              revert with 0, 17
          if not ((block.timestamp * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) - (unknown19185d9b[stor6[addr(_payee)][idx]].field_552 * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) / 10^14) - unknown19185d9b[stor6[addr(_payee)][idx]].field_0:
              idx = idx + 1
              continue 
          if unknown19185d9b[stor6[addr(_payee)][idx]].field_0 > (block.timestamp * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) - (unknown19185d9b[stor6[addr(_payee)][idx]].field_552 * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) / 10^14:
              revert with 0, 17
          unknown19185d9b[stor6[addr(_payee)][idx]].field_0 = (block.timestamp * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) - (unknown19185d9b[stor6[addr(_payee)][idx]].field_552 * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) / 10^14
          mem[0] = tokenOfOwnerByIndex[addr(_payee)][idx]
          mem[32] = 12
          unknown19185d9b[stor6[addr(_payee)][idx]].field_512 = block.timestamp % 1099511627776
          _67 = mem[64]
          mem[mem[64] + 36] = _payee
          mem[mem[64] + 68] = ((block.timestamp * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) - (unknown19185d9b[stor6[addr(_payee)][idx]].field_552 * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) / 10^14) - unknown19185d9b[stor6[addr(_payee)][idx]].field_0
          _68 = mem[64]
          mem[mem[64]] = 68
          mem[64] = mem[64] + 100
          mem[_68 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_68 + 36 len 28]
          _72 = mem[_68]
          s = 0
          while s < _72:
              mem[s + _67 + 100] = mem[s + _68 + 32]
              s = s + 32
              continue 
          mem[_72 + _67 + 100] = 0
          call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.mem[mem[64] len 4] with:
               gas gas_remaining wei
              args mem[mem[64] + 4 len _72 + _67 + -mem[64] + 96]
          if not return_data.size:
              if ext_call.success:
                  log 0x47db2abc: _payee, ((block.timestamp * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) - (unknown19185d9b[stor6[addr(_payee)][idx]].field_552 * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) / 10^14) - unknown19185d9b[stor6[addr(_payee)][idx]].field_0
                  idx = idx + 1
                  continue 
              if mem[96]:
                  revert with memory
                    from 128
                     len mem[96]
          else:
              _108 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_108] = return_data.size
              mem[_108 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if ext_call.success:
                  log 0x47db2abc: _payee, ((block.timestamp * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) - (unknown19185d9b[stor6[addr(_payee)][idx]].field_552 * unknown19185d9b[stor6[addr(_payee)][idx]].field_256) / 10^14) - unknown19185d9b[stor6[addr(_payee)][idx]].field_0
                  idx = idx + 1
                  continue 
              if return_data.size:
                  revert with ext_call.return_data[0 len return_data.size]
      else:
          if unknown19185d9b[stor6[addr(_payee)][idx]].field_632 - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 > 1099511627775:
              revert with 0, 17
          if unknown19185d9b[stor6[addr(_payee)][idx]].field_256 != unknown19185d9b[stor6[addr(_payee)][idx]].field_256 * unknown19185d9b[stor6[addr(_payee)][idx]].field_632 - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 % 1099511627776 / unknown19185d9b[stor6[addr(_payee)][idx]].field_632 - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 % 1099511627776 and unknown19185d9b[stor6[addr(_payee)][idx]].field_632 - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 % 1099511627776:
              revert with 0, 17
          if (unknown19185d9b[stor6[addr(_payee)][idx]].field_256 * unknown19185d9b[stor6[addr(_payee)][idx]].field_632 - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 % 1099511627776 / 10^14) - unknown19185d9b[stor6[addr(_payee)][idx]].field_0 > unknown19185d9b[stor6[addr(_payee)][idx]].field_256 * unknown19185d9b[stor6[addr(_payee)][idx]].field_632 - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 % 1099511627776 / 10^14:
              revert with 0, 17
          if not (unknown19185d9b[stor6[addr(_payee)][idx]].field_256 * unknown19185d9b[stor6[addr(_payee)][idx]].field_632 - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 % 1099511627776 / 10^14) - unknown19185d9b[stor6[addr(_payee)][idx]].field_0:
              idx = idx + 1
              continue 
          if unknown19185d9b[stor6[addr(_payee)][idx]].field_0 > unknown19185d9b[stor6[addr(_payee)][idx]].field_256 * unknown19185d9b[stor6[addr(_payee)][idx]].field_632 - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 % 1099511627776 / 10^14:
              revert with 0, 17
          unknown19185d9b[stor6[addr(_payee)][idx]].field_0 = unknown19185d9b[stor6[addr(_payee)][idx]].field_256 * unknown19185d9b[stor6[addr(_payee)][idx]].field_632 - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 % 1099511627776 / 10^14
          mem[0] = tokenOfOwnerByIndex[addr(_payee)][idx]
          mem[32] = 12
          unknown19185d9b[stor6[addr(_payee)][idx]].field_512 = block.timestamp % 1099511627776
          _73 = mem[64]
          mem[mem[64] + 36] = _payee
          mem[mem[64] + 68] = (unknown19185d9b[stor6[addr(_payee)][idx]].field_256 * unknown19185d9b[stor6[addr(_payee)][idx]].field_632 - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 % 1099511627776 / 10^14) - unknown19185d9b[stor6[addr(_payee)][idx]].field_0
          _74 = mem[64]
          mem[mem[64]] = 68
          mem[64] = mem[64] + 100
          mem[_74 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_74 + 36 len 28]
          _77 = mem[_74]
          s = 0
          while s < _77:
              mem[s + _73 + 100] = mem[s + _74 + 32]
              s = s + 32
              continue 
          mem[_77 + _73 + 100] = 0
          call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.mem[mem[64] len 4] with:
               gas gas_remaining wei
              args mem[mem[64] + 4 len _77 + _73 + -mem[64] + 96]
          if not return_data.size:
              if ext_call.success:
                  log 0x47db2abc: _payee, (unknown19185d9b[stor6[addr(_payee)][idx]].field_256 * unknown19185d9b[stor6[addr(_payee)][idx]].field_632 - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 % 1099511627776 / 10^14) - unknown19185d9b[stor6[addr(_payee)][idx]].field_0
                  idx = idx + 1
                  continue 
              if mem[96]:
                  revert with memory
                    from 128
                     len mem[96]
          else:
              _109 = mem[64]
              mem[64] = mem[64] + ceil32(return_data.size) + 1
              mem[_109] = return_data.size
              mem[_109 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
              if ext_call.success:
                  log 0x47db2abc: _payee, (unknown19185d9b[stor6[addr(_payee)][idx]].field_256 * unknown19185d9b[stor6[addr(_payee)][idx]].field_632 - unknown19185d9b[stor6[addr(_payee)][idx]].field_552 % 1099511627776 / 10^14) - unknown19185d9b[stor6[addr(_payee)][idx]].field_0
                  idx = idx + 1
                  continue 
              if return_data.size:
                  revert with ext_call.return_data[0 len return_data.size]
      revert with 2428038168

def unknown508454f1() payable: 
  mem[64] = 96
  require calldata.size - 4 >=ΓÇ▓ 32
  require cd <= 18446744073709551615
  require cd <ΓÇ▓ calldata.size
  require ('cd', 4).length <= 18446744073709551615
  require cd * ('cd', 4).length) + 36 <= calldata.size
  if not -('cd', 4).length:
      revert with 0, ('cd', 4).length
  idx = 0
  while idx < ('cd', 4).length:
      require cd[((32 * idx) + cd == addr(cd[((32 * idx) + cd)
      if not addr(cd[((32 * idx) + cd):
          revert with 0, 'ERC721: address zero is not a valid owner'
      mem[0] = addr(cd[((32 * idx) + cd)
      mem[32] = 3
      if not -balanceOf[addr(cd[((32 * idx) + cd)]:
          revert with 415995818
      s = 0
      while s < balanceOf[addr(cd[((32 * idx) + cd)]:
          if not addr(cd[((32 * idx) + cd):
              revert with 0, 'ERC721: address zero is not a valid owner'
          if s >= balanceOf[addr(cd[((32 * idx) + cd)]:
              revert with 0, 'ERC721Enumerable: owner index out of bounds'
          mem[0] = tokenOfOwnerByIndex[addr(cd[((32 * idx) + cd)][s]
          mem[32] = 12
          if block.timestamp < unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_592:
              log 0x90514912: tokenOfOwnerByIndex[addr(cd[((32 * idx) + cd
              s = s + 1
              continue 
          if block.timestamp < unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552:
              s = s + 1
              continue 
          if block.timestamp <= unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_632:
              if block.timestamp - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 > block.timestamp:
                  revert with 0, 17
              if unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256 != (block.timestamp * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) - (unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) / block.timestamp - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 and block.timestamp - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552:
                  revert with 0, 17
              if ((block.timestamp * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) - (unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) / 10^14) - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_0 > (block.timestamp * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) - (unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) / 10^14:
                  revert with 0, 17
              if not ((block.timestamp * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) - (unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) / 10^14) - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_0:
                  s = s + 1
                  continue 
              if unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_0 > (block.timestamp * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) - (unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) / 10^14:
                  revert with 0, 17
              unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_0 = (block.timestamp * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) - (unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) / 10^14
              mem[0] = tokenOfOwnerByIndex[addr(cd[((32 * idx) + cd)][s]
              mem[32] = 12
              unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_512 = block.timestamp % 1099511627776
              _123 = mem[64]
              mem[mem[64] + 36] = addr(cd[((32 * idx) + cd)
              mem[mem[64] + 68] = ((block.timestamp * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) - (unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256) / 10^14) - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_0
              _124 = mem[64]
              mem[mem[64]] = 68
              mem[64] = mem[64] + 100
              mem[_124 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_124 + 36 len 28]
              _128 = mem[_124]
              t = 0
              while t < _128:
                  mem[t + _123 + 100] = mem[t + _124 + 32]
                  t = t + 32
                  continue 
              mem[_128 + _123 + 100] = 0
              call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.mem[mem[64] len 4] with:
                   gas gas_remaining wei
                  args mem[mem[64] + 4 len _128 + _123 + -mem[64] + 96]
              if not return_data.size:
                  if ext_call.success:
                      log 0x47db2abc: addr(cd[((32 * idx) + cdestamp * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd
                      s = s + 1
                      continue 
                  if mem[96]:
                      revert with memory
                        from 128
                         len mem[96]
              else:
                  _164 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size) + 1
                  mem[_164] = return_data.size
                  mem[_164 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if ext_call.success:
                      log 0x47db2abc: addr(cd[((32 * idx) + cdestamp * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd
                      s = s + 1
                      continue 
                  if return_data.size:
                      revert with ext_call.return_data[0 len return_data.size]
          else:
              if unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_632 - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 > 1099511627775:
                  revert with 0, 17
              if unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256 != unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_632 - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 % 1099511627776 / unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_632 - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 % 1099511627776 and unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_632 - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 % 1099511627776:
                  revert with 0, 17
              if (unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_632 - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 % 1099511627776 / 10^14) - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_0 > unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_632 - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 % 1099511627776 / 10^14:
                  revert with 0, 17
              if not (unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_632 - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 % 1099511627776 / 10^14) - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_0:
                  s = s + 1
                  continue 
              if unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_0 > unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_632 - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 % 1099511627776 / 10^14:
                  revert with 0, 17
              unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_0 = unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_632 - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 % 1099511627776 / 10^14
              mem[0] = tokenOfOwnerByIndex[addr(cd[((32 * idx) + cd)][s]
              mem[32] = 12
              unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_512 = block.timestamp % 1099511627776
              _129 = mem[64]
              mem[mem[64] + 36] = addr(cd[((32 * idx) + cd)
              mem[mem[64] + 68] = (unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_256 * unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_632 - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_552 % 1099511627776 / 10^14) - unknown19185d9b[stor6[addr(cd[((32 * idx) + cd)][s]].field_0
              _130 = mem[64]
              mem[mem[64]] = 68
              mem[64] = mem[64] + 100
              mem[_130 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_130 + 36 len 28]
              _133 = mem[_130]
              t = 0
              while t < _133:
                  mem[t + _129 + 100] = mem[t + _130 + 32]
                  t = t + 32
                  continue 
              mem[_133 + _129 + 100] = 0
              call 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.mem[mem[64] len 4] with:
                   gas gas_remaining wei
                  args mem[mem[64] + 4 len _133 + _129 + -mem[64] + 96]
              if not return_data.size:
                  if ext_call.success:
                      log 0x47db2abc: addr(cd[((32 * idx) + cd
                      s = s + 1
                      continue 
                  if mem[96]:
                      revert with memory
                        from 128
                         len mem[96]
              else:
                  _165 = mem[64]
                  mem[64] = mem[64] + ceil32(return_data.size) + 1
                  mem[_165] = return_data.size
                  mem[_165 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                  if ext_call.success:
                      log 0x47db2abc: addr(cd[((32 * idx) + cd
                      s = s + 1
                      continue 
                  if return_data.size:
                      revert with ext_call.return_data[0 len return_data.size]
          revert with 2428038168
      idx = idx + 1
      continue 
