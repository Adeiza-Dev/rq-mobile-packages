class TrieNode {
  late Map<String, TrieNode> children;
  late bool isEndOfWord;

  TrieNode() {
    children = {};
    isEndOfWord = false;
  }
}

class Trie {
  late TrieNode root;

  Trie() {
    root = TrieNode();
  }

  void insert(String word) {
    TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node.children.containsKey(char)) {
        node.children[char] = TrieNode();
      }
      node = node.children[char]!;
    }
    node.isEndOfWord = true;
  }

  bool search(String word) {
    TrieNode? node = searchNode(word);
    return node != null && node.isEndOfWord;
  }

  TrieNode? searchNode(String word) {
    TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (node.children.containsKey(char)) {
        node = node.children[char]!;
      } else {
        return null;
      }
    }
    return node;
  }
}
