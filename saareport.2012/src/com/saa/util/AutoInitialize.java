package com.saa.util;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.math.BigDecimal;
import java.sql.Array;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;

/**
 * This class implements basic functionality for all objects that can have their
 * fields automatically initialized by the values from a <CODE>PropertiesIF</CODE>
 * or a <CODE>java.sql.ResultSet</CODE>.  If a field's name is the same as a property
 * key or a column name, then it can be automatically initialized with the value from
 * the property or result set, respectively.
 *
 * @see PropertyIF
 * @author sjaumann
 * @version $Id: AutoInitialize.java,v 1.1 2008/07/03 02:54:08 cvsadmin Exp $
 */
abstract public class AutoInitialize implements Serializable {
    /** Helps with serialization over time. */
    private static final long serialVersionUID = -810898210279083842L;

    /** The meta class for this class. */
    private transient Class metaClass;

    /** The fields in this object. */
    private transient Field[] fields;

    /** The count of fields in this object. */
    private transient int fieldCount;

    /**
     * Default constructor.  The object's fields will be populated by an as-yet
     * unknown set of properties.
     */
    public AutoInitialize() {
        metaClass = this.getClass();
        fields = metaClass.getFields();
        fieldCount = fields.length;
    }

    /**
     * Initializes this object's public members with values from properties whose
     * keys have the same name as the object's members.
     *
     * @param props The properties to initialize the object with
     */
 
    /**
     * Initializes this object's public members with results from a database query whose
     * columns have the same name as the object's members.
     *
     * @exception SQLException if there are any database problems
     */
    public void populate(ResultSet result) throws SQLException {
        if (result == null)
            throw new IllegalArgumentException("Cannot populate with a null result set.");

        Class fieldType = null;
        String memberName = null;
        int modifiers = 0;

        try {
            // For each member in the auto persistent class...
            for (int i = 0; i < fieldCount; i++) {

                // Get a member's name.
				memberName = fields[i].getName();

                // See if the member is public ONLY.
                modifiers = fields[i].getModifiers();

                // Member needs to be public and not final.
                if ((Modifier.isPublic(modifiers)) && (Modifier.isFinal(modifiers) == false)) {
                    fieldType = fields[i].getType();

                    if (fieldType.equals(boolean.class)) {
                        fields[i].setBoolean(this, result.getBoolean(memberName));
                    }
                    else if (fieldType.equals(byte.class)) {
                        fields[i].setByte(this, result.getByte(memberName));
                    }
                    else if (fieldType.equals(char.class)) {
                        fields[i].setChar(this, result.getString(memberName).charAt(0));
                    }
                    else if (fieldType.equals(double.class)) {
                        fields[i].setDouble(this, result.getDouble(memberName));
                    }
                    else if (fieldType.equals(float.class)) {
                        fields[i].setFloat(this, result.getFloat(memberName));
                    }
                    else if (fieldType.equals(int.class)) {
                        fields[i].setInt(this, result.getInt(memberName));
                    }
                    else if (fieldType.equals(long.class)) {
                        fields[i].setLong(this, result.getLong(memberName));
                    }
                    else if (fieldType.equals(short.class)) {
                        fields[i].setShort(this, result.getShort(memberName));
                    }
                    else if (fieldType.equals(BigDecimal.class)) {
                        fields[i].set(this, result.getBigDecimal(memberName));
                    }
                    else if (fieldType.equals(Array.class)) {
                        fields[i].set(this, result.getArray(memberName));
                    }
                    else if (fieldType.equals(Blob.class)) {
                        fields[i].set(this, result.getBlob(memberName));
                    }
                    else if (fieldType.equals(Clob.class)) {
                        fields[i].set(this, result.getClob(memberName));
                    }
                    else if (fieldType.equals(Date.class)) {
                        fields[i].set(this, result.getDate(memberName));
                    }
                    else if (fieldType.equals(String.class)) {
                        fields[i].set(this, result.getString(memberName));
                    }
                    else if (fieldType.equals(Time.class)) {
                        fields[i].set(this, result.getTime(memberName));
                    }
                    else if (fieldType.equals(Timestamp.class)) {
                        fields[i].set(this, result.getTimestamp(memberName));
                    }
                    else {
                        fields[i].set(this, result.getObject(memberName));
                    }
                } // if
            } // for
        } // try
        catch (IllegalAccessException iae) {
            System.err.println("Got illegal access exception trying to auto-initialize: " + this.getClass().getName());
        }
    }

  
    /**
     * Returns a reference to the member whose name is given.  If the member is a
     * primitive type, it is wrapped in its object type.
     *
     * @param name The member's name
     * @return a reference to the member whose name is given
     * @exception IllegalAccessException if access to the given member is not allowed
     * @exception NoSuchFieldException if no field with the given name exists
     */
    public Object getMember(String name) throws IllegalAccessException, NoSuchFieldException {
        Field field = metaClass.getField(name);

        if (field != null) {
            int modifiers = field.getModifiers();

            // Member needs to be public and not final.
            if ((Modifier.isPublic(modifiers)) &&
            (Modifier.isFinal(modifiers) == false)) {

                return ( field.get(this));
            } // if
            else
                return null;
        } // if
        else
            return null;

    }

    /**
     * Sets the value of the member whose name is given to the given value.
     *
     * @param name The member's name
     * @param value The member's new value
     * @exception IllegalAccessException if access to the given member is not allowed
     * @exception NoSuchFieldException if no field with the given name exists
     * @exception SQLException if there is a problem carrying this change through
     *                         to the database
     */
    public void setMember(String name, Object value) throws IllegalAccessException, NoSuchFieldException, SQLException {
        Field field = metaClass.getField(name);

        if (field != null) {
            int modifiers = field.getModifiers();

            // Member needs to be public and not final.
            if ((Modifier.isPublic(modifiers)) &&
            (Modifier.isFinal(modifiers) == false)) {

                field.set(this, value);
            } // if
        } // if
    }

    /**
     * Returns a member's name that has had rules applied to it so that all of the
     * possible property keys can be represented.  Here are the current
     * rules:<P>
     *
     * <UL>
     * <LI>Underscores in member names are converted to dots in property names.
     * <UL>
     * <LI>Example: member name of "Customer_name" is converted to a property key of "Customer.name"
     * </UL>
     * </UL>
     *
     * @param memberName The member's original name
     * @return The property key that the member name represents
     */
    static private final String resolveMemberName(String memberName) {
        return (memberName.replace('_', '.'));
    }

    /**
     * Returns a property's key that has had rules applied to it so that all of the
     * possible member names can be represented.  Here are the current
     * rules:<P>
     *
     * <UL>
     * <LI>Dots in property keys are converted to underscores in member names.
     * <UL>
     * <LI>Example: property key of "Customer.name" is converted to a member name of "Customer_name"
     * </UL>
     * </UL>
     *
     * @param propertyKey The property key
     * @return The member name that the property key represents
     */
    static private final String unResolveMemberName(String propertyKey) {
        return (propertyKey.replace('.', '_'));
    }
}

