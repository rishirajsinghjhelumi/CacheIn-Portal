from sqlalchemy import (
    Column,
    Integer
    )

from ..models import Base,DBSession

from sqlalchemy.types import String,Float
from sqlalchemy.schema import ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy import Table
from sqlalchemy import and_

from ..util import getTimeEpoch

class Question(Base):

    __tablename__ = "questions"

    id = Column(Integer,primary_key=True)
    question = Column(String(16384))            

    def __init__(self,question):
        self.question = question

class Attachment(Base):

    __tablename__ = "attachments"

    id = Column(Integer,primary_key=True)

    qid = Column(Integer,ForeignKey('questions.id'))
    type = Column(String(256))
    attachment = Column(String(2048))

    def __init__(self,qid,type,attachment):
        self.qid = qid
        self.type = type
        self.attachment = attachment

class Answer(Base):

    __tablename__ = "answers"

    id = Column(Integer,primary_key=True)
    answer = Column(String(256))
    points = Column(Integer)

    qid = Column(Integer,ForeignKey('questions.id'))
    next_qid = Column(Integer,ForeignKey('questions.id'))

    def __init__(self,answer,points,qid,next_qid):
        self.answer = answer
        self.points = points
        self.qid = qid
        self.next_qid = next_qid

class Comment(Base):

    __tablename__ = "comments"

    id = Column(Integer,primary_key=True)
    comment = Column(String(2048))
    visual = Column(Integer)
    time = Column(Integer)

    qid = Column(Integer,ForeignKey('questions.id'))
    user_id = Column(Integer,ForeignKey('user.id'))

    def __init__(self,comment,qid,user_id,visual = 0):
        self.comment = comment
        self.qid = qid
        self.user_id = user_id
        self.visual = visual 
        self.time = getTimeEpoch()
        
