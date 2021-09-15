@wip

Feature: 101

  Scenario: Primero impresion
    Given print "Peace World"
    When print "Reserve a seat in", "your heart for everyone."
    Then print 2+2+2+2+2+1
    

  Scenario: Second step
#    The following is a variable declaration:
    Given def name = 'Barabas'
    When print "My name is" + name
    Then print "My name is", name
    * def age = 33
    * print name, 'is',age,'years old.'
  
  Scenario: Difficult parameters: json object
    Given def student = {'name': 'Ina','owes_tuition_fee': false}
    * print student
    * print student.name
    * print student.owes_tuition_fee


  Scenario: Json object II
    Given def worker =
    """
    { 'employee_id': 999
    'first_name':'Steven'
    'last_name':'King'
    'department':'Maintenance/Cleaning'
    }
    """
    * print worker
    When print worker.first_name
    Then print worker.last_name
    And print worker.department


  Scenario: Json array object
    Given def students =
    """
    [
      { 'id': 111
        'first_name':'Jason'
        'last_name':'Jayson'
        'department':'Science'
      }
      {
        'id': 117
        'first_name':'James'
        'last_name':'Jayms'
        'department':'Geography'
      }
    ]
    """
    * print students[0].id
    * print students[0].department
    * print students[1].id
    * print students[1].department
    * print students[0].first_name
    * print students[1].first_name


