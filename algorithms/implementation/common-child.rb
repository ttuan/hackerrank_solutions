#include <bits/stdc++.h>

using namespace std;

int main() {
  string s1;
  cin >> s1;
  string s2;
  cin >> s2;

  vector < vector<int> > c(s1.length()+1,vector<int>(s2.length()+1));
  for (int i=1;i<=s1.length();i++) {
    for (int j=1;j<=s2.length();j++) {
      if (s1[i-1]==s2[j-1])
        c[i][j]=c[i-1][j-1]+1;
      else
        c[i][j]=max(c[i][j-1], c[i-1][j]);
    }
  }

  cout << c[s1.length()][s2.length()];
  return 0;
}

# Fucking same algorithm but C++ is passed
# #!/bin/ruby

# def commonChild(s1, s2, l)
#   mt = Array.new(l+1) {Array.new(l+1, 0)}
#   for i in (1..l)
#     for j in (1..l)
#       if s1[i-1] == s2[j-1]
#         mt[i][j] = mt[i-1][j-1] + 1
#       else
#         mt[i][j] = (mt[i-1][j] > mt[i][j-1]) ? mt[i-1][j] : mt[i][j-1]
#       end
#     end
#   end
#   mt[l][l]
# end

# s1 = gets.strip
# s2 = gets.strip
# l = s1.length
# result = commonChild(s1, s2, l)
# puts result;

