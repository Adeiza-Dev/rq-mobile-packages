import 'package:hd_wallet/hd_wallet/wallet/account_wallet.dart';

const testRecoveryPhrase =
    "team away blush summer trip screen acquire rival cherry monitor neglect nature valley volume sand until credit road common gorilla clock warm father spike";

const cyprusOneAddress = "0x1bB8D036a093AcB854701b3C7b4aD95BB299D0CE";
const cyprusTwoAddress = "0x355c2A68C069f01FDdB622a1380104E1f80C2Cb5";
const cyprusThreeAddress = "0x4d5840bc4d133D27Bc3d38CE045D755d489dc9D4";
const paxosOneAddress = "0x62c3acA750fb1911f23CEE77eA0C468056f3831F";
const paxosTwoAddress = "0x8250a80e3e9cBb1E13d3872fCE1a8fFc94c79137";
const paxosThreeAddress = "0xa1C2dA5C4688d922566F76D8fbfD1727DD9F158f";
const hydraOneAddress = "0xaC4D492bE8097368e653ec2D34203B51C0139Ce2";
const hydraTwoAddress = "0xd9D14282D833A5e58393934Ef566bA857c86e4a9";
const hydraThreeAddress = "0xEB5DA52E70822Cc9229aaE22283311DFd932cf0C";
const env = "test";

QuaiColosseumShard cyprus1 = QuaiColosseumShard(
  shardName: 'Cyprus 1',
  shardId: 'cyprus-1',
  shardPrefix: '0x1D',
);

QuaiColosseumShard cyprus2 = QuaiColosseumShard(
  shardName: 'Cyprus 2',
  shardId: 'cyprus-2',
  shardPrefix: '0x3A',
);

QuaiColosseumShard cyprus3 = QuaiColosseumShard(
  shardName: 'Cyprus 3',
  shardId: 'cyprus-3',
  shardPrefix: '0x57',
);

QuaiColosseumShard paxos1 = QuaiColosseumShard(
  shardName: 'Paxos 1',
  shardId: 'paxos-1',
  shardPrefix: '0x73',
);

QuaiColosseumShard paxos2 = QuaiColosseumShard(
  shardName: 'Paxos 2',
  shardId: 'paxos-2',
  shardPrefix: '0x8F',
);

QuaiColosseumShard paxos3 = QuaiColosseumShard(
  shardName: 'Paxos 3',
  shardId: 'paxos-3',
  shardPrefix: '0xAB',
);

QuaiColosseumShard hydra1 = QuaiColosseumShard(
  shardName: 'Hydra 1',
  shardId: 'hydra-1',
  shardPrefix: '0xC7',
);

QuaiColosseumShard hydra2 = QuaiColosseumShard(
  shardName: 'Hydra 2',
  shardId: 'hydra-2',
  shardPrefix: '0xE3',
);

QuaiColosseumShard hydra3 = QuaiColosseumShard(
  shardName: 'Hydra 3',
  shardId: 'hydra-3',
  shardPrefix: '0xFF',
);

void main() {
  // group('Quai Colosseum Wallet Shard Integration Tests', () {
  //   late QuaiEucColosseum quaiWallet;

  //   setUp(() {
  //     final hdWallet = HDWalletEuc.fromRecoveryPhrase(testRecoveryPhrase, env);
  //     quaiWallet = hdWallet.getAccountWallet("quai_colosseum") as QuaiEucColosseum;

  //     quaiWallet
  //         .setShards([cyprus1, cyprus2, cyprus3, paxos1, paxos2, paxos3, hydra1, hydra2, hydra3]);
  //   });

  //   test('Verify address retrieval for each Quai Colosseum shard', () {
  //     expect(quaiWallet.getAddressByShard(cyprus1), cyprusOneAddress);
  //     expect(quaiWallet.getAddressByShard(cyprus2), cyprusTwoAddress);
  //     expect(quaiWallet.getAddressByShard(cyprus3), cyprusThreeAddress);
  //     expect(quaiWallet.getAddressByShard(paxos1), paxosOneAddress);
  //     expect(quaiWallet.getAddressByShard(paxos2), paxosTwoAddress);
  //     expect(quaiWallet.getAddressByShard(paxos3), paxosThreeAddress);
  //     expect(quaiWallet.getAddressByShard(hydra1), hydraOneAddress);
  //     expect(quaiWallet.getAddressByShard(hydra2), hydraTwoAddress);
  //     expect(quaiWallet.getAddressByShard(hydra3), hydraThreeAddress);
  //   });

  //   test('Confirm shard determination accuracy by given addresses', () {
  //     expect(quaiWallet.getShardByAddress(cyprusOneAddress), cyprus1);
  //     expect(quaiWallet.getShardByAddress(cyprusTwoAddress), cyprus2);
  //     expect(quaiWallet.getShardByAddress(cyprusThreeAddress), cyprus3);
  //     expect(quaiWallet.getShardByAddress(paxosOneAddress), paxos1);
  //     expect(quaiWallet.getShardByAddress(paxosTwoAddress), paxos2);
  //     expect(quaiWallet.getShardByAddress(paxosThreeAddress), paxos3);
  //     expect(quaiWallet.getShardByAddress(hydraOneAddress), hydra1);
  //     expect(quaiWallet.getShardByAddress(hydraTwoAddress), hydra2);
  //     expect(quaiWallet.getShardByAddress(hydraThreeAddress), hydra3);
  //   });
  //   test('Verify all addresses are present in getAllAddresses', () {
  //     final allAddresses = quaiWallet.getAllAddresses();
  //     expect(allAddresses.contains(cyprusOneAddress), true);
  //     expect(allAddresses.contains(cyprusTwoAddress), true);
  //     expect(allAddresses.contains(cyprusThreeAddress), true);
  //     expect(allAddresses.contains(paxosOneAddress), true);
  //     expect(allAddresses.contains(paxosTwoAddress), true);
  //     expect(allAddresses.contains(paxosThreeAddress), true);
  //     expect(allAddresses.contains(hydraOneAddress), true);
  //     expect(allAddresses.contains(hydraTwoAddress), true);
  //     expect(allAddresses.contains(hydraThreeAddress), true);
  //   });
  // });
}
