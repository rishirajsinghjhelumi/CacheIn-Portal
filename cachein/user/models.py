from sqlalchemy import (
    Column,
    Integer
    )

from ..models import Base,DBSession
from ..util import getTimeEpoch
from ..questions.models import Question

from sqlalchemy.types import String,Float
from sqlalchemy.schema import ForeignKey
from sqlalchemy.orm import relationship

class User(Base):
    
    __tablename__ = "user"
    
    id = Column(Integer,primary_key=True)
    
    name = Column(String(256))
    password = Column(String(256))
    email = Column(String(256),nullable = False)
    
    cur_question = Column(Integer,ForeignKey('questions.id'),default = 1)
    question = relationship("Question",foreign_keys=[cur_question])
    
    score = Column(Integer,default = 0)
    last_submit_time = Column(Integer)
    
    def __init__(self,name,email,password):
        self.name = name
        self.email = email
        self.password = password
        self.last_submit_time = getTimeEpoch()
        