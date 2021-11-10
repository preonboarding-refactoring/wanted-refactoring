from sqlalchemy import (
    Column,
    Integer,
    String,
    DateTime,
    func,
    ForeignKey
)

from db import Base
from db import ENGINE


class Company(Base):
    __tablename__ = 'company'
    id = Column(Integer, primary_key=True, index=True)
    create_at = Column(DateTime, nullable=False, default=func.utc_timestamp(), onupdate=func.utc_timestamp())
    update_at = Column(DateTime, nullable=False, default=func.utc_timestamp(), onupdate=func.utc_timestamp())


class Tag(Base):
    __tablename__ = 'tag'
    id = Column(Integer, primary_key=True, index=True)


class CompanyTag(Base):
    __tablename__ = 'company_tag'
    id = Column(Integer, primary_key=True, index=True)
    company_id = Column(Integer, ForeignKey("company.id"), nullable=False)
    tag_id = Column(Integer, ForeignKey("tag.id"), nullable=False)


class Language(Base):
    __tablename__ = 'language'
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(length=50), nullable=False)


class CompanyLanguageName(Base):
    __tablename__ = 'company_language_name'
    id = Column(Integer, primary_key=True, index=True)
    company_id = Column(Integer, ForeignKey("company.id"), nullable=False)
    language_id = Column(Integer, ForeignKey("language.id"), nullable=False)
    company_name = Column(String(length=50), nullable=False)


class TagLanguageName(Base):
    __tablename__ = 'tag_language_name'
    id = Column(Integer, primary_key=True, index=True)
    tag_id = Column(Integer, ForeignKey("tag.id"), nullable=False)
    language_id = Column(Integer, ForeignKey("language.id"), nullable=False)
    tag_name = Column(String(length=50), nullable=False)


def main():
    Base.metadata.create_all(bind=ENGINE)


if __name__ == "__main__":
    main()
