
package SocialInteraction;


import java.util.*;
import java.io.*;

import org.apache.commons.collections.*;  
import org.apache.commons.collections.collection.*;  
import org.apache.commons.collections.MultiMap;   
import org.apache.commons.collections.map.*;

import edu.uci.ics.jung.graph.DirectedSparseMultigraph;
import edu.uci.ics.jung.graph.DirectedSparseGraph;
import edu.uci.ics.jung.graph.util.EdgeType;
import edu.uci.ics.jung.algorithms.importance.BetweennessCentrality;
import edu.uci.ics.jung.io.GraphMLWriter;

public class Teste {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<String> ar = new ArrayList<String>();
		ar.add("A");
		ar.add("B");
		ar.add("C");
     	ar.add("D");
		ar.add("E");
	//	ar.add("F");
		
		
		MultiMap mhm = new MultiValueMap();
		mhm.put("A", "B");
		mhm.put("A", "B");
		mhm.put("A", "B");
		mhm.put("A", "C");
		mhm.put("A", "D");
		mhm.put("A", "E");
		mhm.put("A", "F");
		mhm.put("B", "A");
		mhm.put("B", "A");
		mhm.put("A", "B");
		mhm.put("B", "A");
		mhm.put("B", "A");
		mhm.put("B", "A");
/*		mhm.put("A", "F");
		mhm.put("B", "A");
		mhm.put("B", "D");*/
	//	mhm.put("B", "F");
/*		mhm.put("C", "A");
		mhm.put("C", "F");
		mhm.put("C", "B");
		mhm.put("D", "F");
		mhm.put("D", "E");
		mhm.put("E", "A");
		mhm.put("E", "F");*/
//		mhm.put("F", "B");
//		mhm.put("F", "C");
		
		SocialInteractionsReports teste = new SocialInteractionsReports();
		
		DirectedSparseMultigraph<String, String> graph = teste.generateGhaph(ar,mhm);
		
	/*	FileWriter file = null;
		try{
			file = new FileWriter("graph.graphml");
			GraphMLWriter graphml = new GraphMLWriter();
			graphml.save(graph, file);
		}catch(Exception e) {System.out.println(e);}; */
		
		
	//	System.out.println(teste.informationIntermediationPerStudent(ar, mhm));
		
	//	System.out.println(teste.isolationPerStudent(ar, mhm));
		
	//	System.out.println(teste.cohesionGroup(ar, mhm));
		
	//	System.out.println("Densidade: " + density);
		
	//	System.out.println(teste.engagementPerStudent(ar, mhm));
		
		System.out.println(teste.outdegree(ar, mhm));
		
	//	System.out.println(teste.prestigePerStudent(ar, mhm));
		
	//System.out.println(teste.visibilityPerStudent(ar, mhm));
		
	//	System.out.println(teste.heterogeneityGroup(ar, mhm));
		
	//	System.out.println(density);
	//	Map<String,String> clone = teste.noDuplicatedInteractions(ar, mhm);
	//	DirectedSparseMultigraph<String, String> graph = teste.generateGhaph(ar,mhm);
		
	/*	BetweennessCentrality ranker = new BetweennessCentrality(graph);
		ranker.setRemoveRankScoresOnFinalize(false);
		ranker.evaluate();
		ranker.printRankings(true, false);
		double bet = ranker.getVertexRankScore("A");
		System.out.println(bet);*/
	//	teste.generateGhaph(ar, new MultiHashMap(clone));
		

	}

}


