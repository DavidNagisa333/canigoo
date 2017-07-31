package cat.gencat.canigo.model;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QEquipament is a Querydsl query type for Equipament
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QEquipament extends EntityPathBase<Equipament> {

    private static final long serialVersionUID = 4874705L;

    public static final QEquipament equipament = new QEquipament("equipament");

    public final NumberPath<Long> id = createNumber("id", Long.class);

    public final StringPath municipi = createString("municipi");

    public final StringPath nom = createString("nom");

    public QEquipament(String variable) {
        super(Equipament.class, forVariable(variable));
    }

    public QEquipament(Path<? extends Equipament> path) {
        super(path.getType(), path.getMetadata());
    }

    public QEquipament(PathMetadata metadata) {
        super(Equipament.class, metadata);
    }

}

