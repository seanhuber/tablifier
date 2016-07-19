require 'spec_helper'

describe Tablifier do
  it 'should be able to generate html tables for a Hash' do
    h = {
      integer: 345,
      float: 3.14,
      date: Date.parse('2016-07-13'),
      datetime: Time.parse('2016-04-30 11:30am'),
      true_boolean: true,
      false_boolean: false,
      string: 'This is a string!',
      nil: nil,
      symbol: :my_symbol,
      encrypted_attribute: 'fwoifje;aoiwjfe'
    }
    expect(Tablifier::Base.tablify(h).squish.gsub('> <', '><')).to eq("<table class='tablifier'><thead><th colspan=\"2\"><div class='obj-type'><span><label>Record Type:</label><span class='val'>Hash</span></span></div></th></thead><tr><td>integer</td><td class='attr-val integer'>345</td></tr><tr><td>float</td><td class='attr-val float'>3.14</td></tr><tr><td>date</td><td class='attr-val date'>Jul 13, 2016</td></tr><tr><td>datetime</td><td class='attr-val date-time'>Apr 30, 2016; 11:30am (CDT)</td></tr><tr><td>true_boolean</td><td class='attr-val boolean true'>True</td></tr><tr><td>false_boolean</td><td class='attr-val boolean false'>False</td></tr><tr><td>string</td><td class='attr-val string'>&quot;This is a string!&quot;</td></tr><tr><td>nil</td><td class='attr-val nil'>nil</td></tr><tr><td>symbol</td><td class='attr-val symbol'>my_symbol</td></tr><tr><td>encrypted_attribute</td><td class='attr-val'>&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;</td></tr></tbody></table>")
  end

  it 'should be able to generate html tables for an ActiveRecord object' do
    user = User.new(
      email_address: 'my_email_234234@gmail.com',
      encrypted_password: '2q9292byf3phnpc298n',
      sign_in_count: '14',
      created_at: Time.parse('2016-04-30 11:30am'),
      updated_at: Time.parse('2016-05-18 10:17pm'),
      first_name: 'Jane',
      last_name: 'Doe',
      middle_name: nil,
      birth_date: Date.parse('1984-07-13'),
      registered: true,
      admin: false
    )
    expect(Tablifier::Base.tablify(user).squish.gsub('> <', '><')).to eq("<table class='tablifier'><thead><th colspan=\"2\"> Jane Doe <div class='obj-type'><span><label>Record Type:</label><span class='val'>User</span></span></div></th></thead><tr><td>id</td><td class='attr-val nil'>nil</td></tr><tr><td>email_address</td><td class='attr-val string'>&quot;my_email_234234@gmail.com&quot;</td></tr><tr><td>encrypted_password</td><td class='attr-val'>&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;&#8226;</td></tr><tr><td>sign_in_count</td><td class='attr-val integer'>14</td></tr><tr><td>created_at</td><td class='attr-val date-time'>Apr 30, 2016; 4:30pm (UTC)</td></tr><tr><td>updated_at</td><td class='attr-val date-time'>May 19, 2016; 3:17am (UTC)</td></tr><tr><td>first_name</td><td class='attr-val string'>&quot;Jane&quot;</td></tr><tr><td>last_name</td><td class='attr-val string'>&quot;Doe&quot;</td></tr><tr><td>middle_name</td><td class='attr-val nil'>nil</td></tr><tr><td>birth_date</td><td class='attr-val date'>Jul 13, 1984</td></tr><tr><td>registered</td><td class='attr-val boolean true'>True</td></tr><tr><td>admin</td><td class='attr-val boolean false'>False</td></tr></tbody></table>")
  end
end
