#!/bin/bash

# text.txt 파일의 첫번째 필드를 모두 출력
echo =====print=======
awk '{print $1}' ./text.txt

# BEGIN
# OFS = 출력 필드 분리자
# ORS = 출력 레코드 분리자
echo =====BEGIN=======
awk 'BEGIN{OFS=":"; ORS="\n";} {print $1, $2}' ./text.txt


echo =====Array=======
i=1
while read line
do
    # 첫번째 필드를 읽어와서 index[i]에 저장
    index[i]=$(echo $line | awk '{print $1}')
    # index 1 : asdf 이런 식으로 출력
    echo index $i : ${index[i]}
    # i를 1씩 증가시키면서 반복
    let i++
# txt 파일 끝날때까지 반복
done < text.txt
echo =================
