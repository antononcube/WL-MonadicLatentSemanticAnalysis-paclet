
(**************************************************************)
(* Package definition                                         *)
(**************************************************************)

BeginPackage["AntonAntonov`MonadicLatentSemanticAnalysis`"];

$LSAMonFailure::usage = "Failure symbol for the monad LSAMon.";

LSAMonApplyTermWeightFunctions::usage = "Apply term weight functions to entries of the document-term matrix.";

LSAMonInterpretBasisVector::usage = "Interpret the a specified basis vector.";

LSAMonEchoStatisticalThesaurusTable::usage = "Echo the statistical thesaurus entries for a specified list of words.";

LSAMonEchoStatisticalThesaurus::usage = "Echo the statistical thesaurus entries for a specified list of words. \
Synonym of LSAMonEchoStatisticalThesaurusTable.";

LSAMonEchoDocumentsStatistics::usage = "Echo statistics for the text collection.";

LSAMonEchoDocumentTermMatrixStatistics::usage = "Echo document-term matrix statistics.";

LSAMonEchoTopicsTable::usage = "Echo the a table with the extracted topics.";

LSAMonGetDocuments::usage = "Get monad's document collection.";

LSAMonMakeDocumentTermMatrix::usage = "Make the document-term matrix.";

LSAMonMakeGraph::usage = "Make a graph of the document-term, document-document, or term-term relationships.";

LSAMonMakeBipartiteGraphMatrix::usage = "Make a bi-partite graph matrix.";

LSAMonFindMostImportantDocuments::usage = "Find the most important texts in the text collection.";

LSAMonExtractStatisticalThesaurus::usage = "Extract the statistical thesaurus for specified list of words.";

LSAMonDocumentCollectionQ::usage = "Gives True if the argument is a text collection.";

LSAMonExtractTopics::usage = "Extract topics.";

LSAMonNormalizeMatrixProduct::usage = "LSAMonNormalizeMatrixProduct[ \"Normalized\" -> (Left|Right) ] \
normalize the matrix factors.";

LSAMonRepresentDocumentTagsByTopics::usage = "Find the topic representation corresponding to a list of tags. \
Each monad document is expected to have a tag. One tag might correspond to multiple documents.";

LSAMonRepresentByTerms::usage = "Find the terms representation of a matrix or a document.";

LSAMonRepresentByTopics::usage = "Find the topics representation of a matrix or a document.";

LSAMonMakeTopicsTable::usage = "Make a table of topics.";

LSAMonTakeTexts::usage = "Gives the value of the key \"texts\" from the monad context.";

LSAMonTakeMatrix::usage = "Gives SSparseMatrix object of the value of the key \"docTermMat\" from the monad context.";

LSAMonTakeWeightedMatrix::usage = "Gives SSparseMatrix object of the value of the key \"wDocTermMat\" from the monad context.";

FindMostImportantSentences::usage = "FindMostImportantSentences[sentences : ( _String | {_String ..} ), nTop_Integer : 5, opts : OptionsPattern[]] \
finds the most important sentences in a text or a list of sentences.";

LSAMonImportFromDirectory::usage = "LSAMonImportFromDirectory[dirName, prefix, infix] imports an LSA object from a directory";


(* Document-term matrix function *)

ToBagOfWords::usage = "ToBagOfWords[ docs : {_String..}, { stemmingRules : (_List | _Dispatch | _Association | Automatic), stopWords_List } ] \
converts a list of documents docs into bags words using stemming rules and removing stop words. \
As options can be given string splitting characters and a post string splitting predicate.";

DocumentTermMatrix::usage = "DocumentTermMatrix[docs:{_String..},{stemmingRules_List, stopWords_List}] converts \
a list of documents docs into sparse matrix using stemming rules and removing stop words. As options can be given \
string splitting characters and a post string splitting predicate. DocumentTermMatrix uses ToBagOfWords.";

WeightTerms::usage = "WeightTerms[docTermMat_?MatrixQ, globalWeightFunc_, localWeightFunc_, normalizerFunc_] changes \
the entries of docTermMat according to the functions for global weight, local weight, and normalization.";

GlobalTermWeight::usage = "GlobalTermWeight implements the global weight over a vector.";

GlobalTermFunctionWeights::usage = "Gives the global weights for a given matrix and function name.";

ApplyGlobalTermFunction::usage = "ApplyGlobalTermFunction[mat_?MatrixQ, fname_String] applies the global term weight \
function fname to the elements of mat.";

ApplyLocalTermFunction::usage = "ApplyGlobalTermFunction[mat_?MatrixQ, fname_String] applies the local term weight \
function fname to the elements of mat.";

ApplyNormalizationFunction::usage = "ApplyGlobalTermFunction[mat_?MatrixQ, fname_String] applies term normalization \
function fname to the elements of mat.";

DocumentTermSSparseMatrix::usage = "SSparseMatrix adapter function to DocumentTermMatrix.";

WeightTermsOfSSparseMatrix::usage = "SSparseMatrix adapter function to WeightTerms.";

(* Paclets load *)

PacletInstall["AntonAntonov/DataReshapers", AllowVersionUpdate -> False];
PacletInstall["AntonAntonov/DimensionReducers", AllowVersionUpdate -> False];
PacletInstall["AntonAntonov/MonadMakers", AllowVersionUpdate -> False];
PacletInstall["AntonAntonov/OutlierIdentifiers", AllowVersionUpdate -> False];
PacletInstall["AntonAntonov/SSparseMatrix", AllowVersionUpdate -> False];

Begin["`Private`"];

Needs["AntonAntonov`MonadicLatentSemanticAnalysis`DocumentTermMatrixConstruction`"];
Needs["AntonAntonov`MonadicLatentSemanticAnalysis`LSAMon`"];


End[]; (*`Private`*)

EndPackage[]