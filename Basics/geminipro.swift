// In the Xcode Add Packages dialog, add this Swift package URL into the search bar:
// https://github.com/google/generative-ai-swift

// Add the following code to your Swift source code
import GoogleGenerativeAI

let config = GenerationConfig(
  temperature: 0.9,
  topP: 1,
  topK: 1,
  maxOutputTokens: 2048,
)

// Don't check your API key into source control!
guard let apiKey = ProcessInfo.processInfo.environment["AIzaSyBcFMTmTJVtqnWv_UVJy6kevt1Rhecn0ns"] else {
  fatalError("Add `API_KEY` as an Environment Variable in your app's scheme.")
}

let model = GenerativeModel(
  name: "gemini-pro",
  apiKey: apiKey,
  generationConfig: config,
  safetySettings: [
    SafetySetting(harmCategory: .harassment, threshold: .blockMediumAndAbove),
    SafetySetting(harmCategory: .hateSpeech, threshold: .blockMediumAndAbove),
    SafetySetting(harmCategory: .sexuallyExplicit, threshold: .blockMediumAndAbove),
    SafetySetting(harmCategory: .dangerousContent, threshold: .blockMediumAndAbove)
  ]
)

Task {
  do {
    let response = try await model.generateContent(
      "give me the list of all coding problems i should do for SDE and IOS Engeneering related in checkbox form and unmarked, with links to those problems \nyou can use codeforces, Atcoder and codewars for that + should add Project Ideas too, for SwiftUI\n\nit should be like \n\n- [ ] ProblemName: Link. (Category like DSA, ALgo, Swift, SWiftUI,) ## **Coding Problems:**\n\n- [ ] **ProblemName:** Two Sum\n[Link](https://leetcode.com/problems/two-sum/) (Category: DSA, Array)\n- [ ] **ProblemName:** Maximum Subarray\n[Link](https://leetcode.com/problems/maximum-subarray/) (Category: DSA, Dynamic Programming)\n- [ ] **ProblemName:** Longest Common Subsequence\n[Link](https://leetcode.com/problems/longest-common-subsequence/) (Category: DSA, Dynamic Programming)\n- [ ] **ProblemName:** Reverse a String\n[Link](https://leetcode.com/problems/reverse-string/) (Category: String Manipulation)\n- [ ] **ProblemName:** Implement Stack Data Structure\n[Link](https://leetcode.com/problems/implement-stack-data-structure/) (Category: Data Structures)\n- [ ] **ProblemName:** Implement Queue Data Structure\n[Link](https://leetcode.com/problems/implement-queue-data-structure/) (Category: Data Structures)\n- [ ] **ProblemName:** Binary Search\n[Link](https://leetcode.com/problems/binary-search/) (Category: DSA, Searching)\n- [ ] **ProblemName:** Merge Two Sorted Lists\n[Link](https://leetcode.com/problems/merge-two-sorted-lists/) (Category: DSA, Linked List)\n- [ ] **ProblemName:** Check if a String is a Palindrome\n[Link](https://leetcode.com/problems/valid-palindrome/) (Category: String Manipulation)\n- [ ] **ProblemName:** Find the Missing Number\n[Link](https://leetcode.com/problems/missing-number/) (Category: DSA, Array)\n\n\n## **Project Ideas:**\n\n\n- [ ] **SwiftUI Calendar App:** Build a customizable calendar app with SwiftUI, allowing users to create events, set reminders, and manage their schedule in a beautiful and user-friendly interface. \n- [ ] **SwiftUI Photo Editor:** Develop a powerful photo editor app with SwiftUI, providing users with a range of editing tools, filters, and adjustments to enhance and transform their photos. \n- [ ] **SwiftUI Music Player:** Create a modern and intuitive music player app with SwiftUI, allowing users to browse and play music from their library, create playlists, and enjoy a seamless music experience. \n- [ ] **SwiftUI Shopping List App:** Design and implement a user-friendly shopping list app with SwiftUI, allowing users to easily add and manage items, track their purchases, and plan their shopping trips efficiently. \n- [ ] **SwiftUI Budget Tracker App:** Build a comprehensive budget tracker app with SwiftUI, helping users track their income, expenses, and savings in a visually appealing and informative manner.\n\n\nwell make it more bigger by using striver's list with leetcode link and fundamental problems too. ## **Coding Problems:**\n\n- [ ] **ProblemName:** Two Sum\n[Link](https://leetcode.com/problems/two-sum/) (Category: DSA, Array)\n- [ ] **ProblemName:** Maximum Subarray\n[Link](https://leetcode.com/problems/maximum-subarray/) (Category: DSA, Dynamic Programming)\n- [ ] **ProblemName:** Longest Common Subsequence\n[Link](https://leetcode.com/problems/longest-common-subsequence/) (Category: DSA, Dynamic Programming)\n- [ ] **ProblemName:** Reverse a String\n[Link](https://leetcode.com/problems/reverse-string/) (Category: String Manipulation)\n- [ ] **ProblemName:** Implement Stack Data Structure\n[Link](https://leetcode.com/problems/implement-stack-data-structure/) (Category: Data Structures)\n- [ ] **ProblemName:** Implement Queue Data Structure\n[Link](https://leetcode.com/problems/implement-queue-data-structure/) (Category: Data Structures)\n- [ ] **ProblemName:** Binary Search\n[Link](https://leetcode.com/problems/binary-search/) (Category: DSA, Searching)\n- [ ] **ProblemName:** Merge Two Sorted Lists\n[Link](https://leetcode.com/problems/merge-two-sorted-lists/) (Category: DSA, Linked List)\n- [ ] **ProblemName:** Check if a String is a Palindrome\n[Link](https://leetcode.com/problems/valid-palindrome/) (Category: String Manipulation)\n- [ ] **ProblemName:** Find the Missing Number\n[Link](https://leetcode.com/problems/missing-number/) (Category: DSA, Array)\n\n## **Fundamental Problems:**\n\n- [ ] **ProblemName:** Fibonacci Series\n[Link](https://leetcode.com/problems/fibonacci-number/) (Category: DSA, Recursion)\n- [ ] **ProblemName:** Factorial of a Number\n[Link](https://leetcode.com/problems/factorial-trailing-zeroes/) (Category: DSA, Mathematics)\n- [ ] **ProblemName:** Power of a Number\n[Link](https://leetcode.com/problems/powx-n/) (Category: DSA, Mathematics)\n- [ ] **ProblemName:** GCD of Two Numbers\n[Link](https://leetcode.com/problems/greatest-common-divisor-of-strings/) (Category: DSA, Number Theory)\n- [ ] **ProblemName:** LCM of Two Numbers\n[Link](https://leetcode.com/problems/least-common-multiple/) (Category: DSA, Number Theory)\n\n## **Project Ideas:**\n\n\n- [ ] **SwiftUI Calendar App:** Build a customizable calendar app with SwiftUI, allowing users to create events, set reminders, and manage their schedule in a beautiful and user-friendly interface. \n- [ ] **SwiftUI Photo Editor:** Develop a powerful photo editor app with SwiftUI, providing users with a range of editing tools, filters, and adjustments to enhance and transform their photos. \n- [ ] **SwiftUI Music Player:** Create a modern and intuitive music player app with SwiftUI, allowing users to browse and play music from their library, create playlists, and enjoy a seamless music experience. \n- [ ] **SwiftUI Shopping List App:** Design and implement a user-friendly shopping list app with SwiftUI, allowing users to easily add and manage items, track their purchases, and plan their shopping trips efficiently. \n- [ ] **SwiftUI Budget Tracker App:** Build a comprehensive budget tracker app with SwiftUI, helping users track their income, expenses, and savings in a visually appealing and informative manner.\n\n\ngive atleast 100+ problems and 30+ Project ideas ## **Coding Problems:**\n\n- [ ] **ProblemName:** Two Sum\n[Link](https://leetcode.com/problems/two-sum/) (Category: DSA, Array)\n- [ ] **ProblemName:** Maximum Subarray\n[Link](https://leetcode.com/problems/maximum-subarray/) (Category: DSA, Dynamic Programming)\n- [ ] **ProblemName:** Longest Common Subsequence\n[Link](https://leetcode.com/problems/longest-common-subsequence/) (Category: DSA, Dynamic Programming)\n- [ ] **ProblemName:** Reverse a String\n[Link](https://leetcode.com/problems/reverse-string/) (Category: String Manipulation)\n- [ ] **ProblemName:** Implement Stack Data Structure\n[Link](https://leetcode.com/problems/implement-stack-data-structure/) (Category: Data Structures)\n- [ ] **ProblemName:** Implement Queue Data Structure\n[Link](https://leetcode.com/problems/implement-queue-data-structure/) (Category: Data Structures)\n- [ ] **ProblemName:** Binary Search\n[Link](https://leetcode.com/problems/binary-search/) (Category: DSA, Searching)\n- [ ] **ProblemName:** Merge Two Sorted Lists\n[Link](https://leetcode.com/problems/merge-two-sorted-lists/) (Category: DSA, Linked List)\n- [ ] **ProblemName:** Check if a String is a Palindrome\n[Link](https://leetcode.com/problems/valid-palindrome/) (Category: String Manipulation)\n- [ ] **ProblemName:** Find the Missing Number\n[Link](https://leetcode.com/problems/missing-number/) (Category: DSA, Array)\n\n## **Fundamental Problems:**\n\n- [ ] **ProblemName:** Fibonacci Series\n[Link](https://leetcode.com/problems/fibonacci-number/) (Category: DSA, Recursion)\n- [ ] **ProblemName:** Factorial of a Number\n[Link](https://leetcode.com/problems/factorial-trailing-zeroes/) (Category: DSA, Mathematics)\n- [ ] **ProblemName:** Power of a Number\n[Link](https://leetcode.com/problems/powx-n/) (Category: DSA, Mathematics)\n- [ ] **ProblemName:** GCD of Two Numbers\n[Link](https://leetcode.com/problems/greatest-common-divisor-of-strings/) (Category: DSA, Number Theory)\n- [ ] **ProblemName:** LCM of Two Numbers\n[Link](https://leetcode.com/problems/least-common-multiple/) (Category: DSA, Number Theory)\n\n## **Project Ideas:**\n\n- [ ] **SwiftUI Calendar App:** Build a customizable calendar app with SwiftUI, allowing users to create events, set reminders, and manage their schedule in a beautiful and user-friendly interface. \n- [ ] **SwiftUI Photo Editor:** Develop a powerful photo editor app with SwiftUI, providing users with a range of editing tools, filters, and adjustments to enhance and transform their photos. \n- [ ] **SwiftUI Music Player:** Create a modern and intuitive music player app with SwiftUI, allowing users to browse and play music from their library, create playlists, and enjoy a seamless music experience. \n- [ ] **SwiftUI Shopping List App:** Design and implement a user-friendly shopping list app with SwiftUI, allowing users to easily add and manage items, track their purchases, and plan their shopping trips efficiently. \n- [ ] **SwiftUI Budget Tracker App:** Build a comprehensive budget tracker app with SwiftUI, helping users track their income, expenses, and savings in a visually appealing and informative manner.\n\n## **Additional Coding Problems:**\n\n- [ ] **ProblemName:** Reverse a Linked List\n[Link](https://leetcode.com/problems/reverse-linked-list/) (Category: DSA, Linked List)\n- [ ] **ProblemName:** Find the Middle of a Linked List\n[Link](https://leetcode.com/problems/middle-of-the-linked-list/) (Category: DSA, Linked List)\n- [ ] **ProblemName:** Check if a Linked List is a Palindrome\n[Link](https://leetcode.com/problems/palindrome-linked-list/) (Category: DSA, Linked List)\n- [ ] **ProblemName:** Merge Two Sorted Arrays\n[Link](https://leetcode.com/problems/merge-sorted-array/) (Category: DSA, Array)\n- [ ] **ProblemName:** Find the Intersection of Two Arrays\n[Link](https://leetcode.com/problems/intersection-of-two-arrays/) (Category: DSA, Array)\n- [ ] **ProblemName:** Find the Union of Two Arrays\n[Link](https://leetcode.com/problems/intersection-of-two-arrays-ii/) (Category: DSA, Array)\n- [ ] **ProblemName:** Find the Kth Largest Element in an Array\n[Link](https://leetcode.com/problems/kth-largest-element-in-an-array/) (Category: DSA, Array)\n- [ ] **ProblemName:** Find the Maximum Product of Three Numbers in an Array\n[Link](https://leetcode.com/problems/maximum-product-of-three-numbers/) (Category: DSA, Array)\n- [ ] **ProblemName:** Find the Minimum Path Sum in a Grid\n[Link](https://leetcode.com/problems/minimum-path-sum/) (Category: DSA, Dynamic Programming)\n- [ ] **ProblemName:** Find the Longest Increasing Subsequence\n[Link](https://leetcode.com/problems/longest-increasing-subsequence/) (Category: DSA, Dynamic Programming)\n- [ ] **ProblemName:** Find the Shortest Path in a Graph\n[Link](https://leetcode.com/problems/shortest-path-in-a-grid-with-obstacles/) (Category: DSA, Graph)\n- [ ] **ProblemName:** Find the Minimum Spanning Tree of a Graph\n[Link](https://leetcode.com/problems/min-cost-to-connect-all-points/) (Category: DSA, Graph)\n- [ ] **ProblemName:** Find the Hamiltonian Cycle in a Graph\n[Link](https://leetcode.com/problems/traveling-salesman-problem/) (Category: DSA, Graph)\n- [ ] **ProblemName:** Implement a Hash Table\n[Link](https://leetcode.com/problems/implement-trie-prefix-tree/) (Category: Data Structures)\n- [ ] **ProblemName:** Implement a Binary Search Tree\n[Link](https://leetcode.com/problems/binary-tree-maximum-path-sum/) (Category: Data Structures)\n- [ ] **ProblemName:** Implement a Red-Black Tree\n[Link](https://leetcode.com/problems/insert-into-a-binary-search-tree/) (Category: Data Structures)\n- [ ] **ProblemName:** Implement a Skip List\n[Link](https://leetcode.com/problems/design-skiplist/) (Category: Data Structures)\n- [ ] **ProblemName:** Implement a Bloom Filter\n[Link](https://leetcode.com/problems/bloom-filter/) (Category: Data Structures)\n- [ ] **ProblemName:** Find the Most Frequent Element in an Array\n[Link](https://leetcode.com/problems/top-k-frequent-elements/) (Category: DSA, Array)\n- [ ] **ProblemName:** Find the Majority Element in an Array\n[Link](https://leetcode.com/problems/majority-element/) (Category: DSA, Array)\n- [ ] **ProblemName:** Find the Mode of an Array\n[Link](https://leetcode.com/problems/find-mode-in-binary-search-tree/) (Category: DSA,\n\n\n\n\n\nadd more problems like on which basics and important topics will coverup, like hashing, sorting, diffrent types of sorting and all things"
    )
    print(response.text ?? "No text available")
  } catch {
    print(error)
  }
}