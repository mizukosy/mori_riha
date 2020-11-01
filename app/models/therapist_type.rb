class TherapistType < ActiveHash::Base
  self.data = [
    { id: 0, name: '入力してね'},
    { id: 1, name: '理学療法士'},
    { id: 2, name: '作業療法士'},
    { id: 3, name: '言語聴覚士'},
    { id: 4, name: 'その他'   }
  ]
end
