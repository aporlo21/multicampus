#����ġ (Corpus) �ؽ�Ʈ ��ó��
(����) ��ó�� �м� �ð�ȭ&��ó�� �˰����� �𵨸� ����(�ǵ��) ��������

mytext<-c("software environment",
  "software environment",
  "software\tenvironment")
mytext
library(stringr)
str_split(mytext,' ')

#sapply(�Է�:����Ʈ, ���:����)
#lapply(�Է�:����Ʈ ��� ����Ʈ )

#�� ��Һ� �ܾ��� ����
sapply(str_split(mytext, ' '),length)  # 1��° �Լ��� ���� 2��°�μ� �Լ��� �����ϰڴ�
#�� ����Ʈ ��ҿ� ����� ���ڿ��� ����
sapply(str_split(mytext, ' '),str_length)  # 1��° �Լ��� ���� 2��°�μ� �Լ��� �����ϰڴ�

#���� ó�� ����
mytext # \t : ���� 4��
mytext.nowhitespace<-str_replace_all(mytext,"[[:space:]]{1,}"," ") 
mytext
#"hi hello"=>"hi hello" #������ĭ���� ġȯ����

#�� ��Һ� �ܾ��� ����
sapply(str_split(mytext.nowhitespace, ' '),length)  # 1��° �Լ��� ���� 2��°�μ� �Լ��� �����ϰڴ�
#�� ����Ʈ ��ҿ� ����� ���ڿ��� ����
sapply(str_split(mytext.nowhitespace, ' '),str_length)  # 1��° �Լ��� ���� 2��°�μ� �Լ��� �����ϰڴ�
#software ���ڿ��� ����
#environment ���ڿ��� ���� 






