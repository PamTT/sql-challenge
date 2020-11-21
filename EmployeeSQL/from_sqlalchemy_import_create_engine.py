from sqlalchemy import create_engine
engine = create_engine('postgresql://localhost:5432/EmployeeSQL')
connection = engine.connect()
