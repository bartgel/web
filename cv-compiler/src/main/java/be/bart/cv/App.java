package be.bart.cv;


import org.apache.fontbox.ttf.TrueTypeFont;
import org.apache.fop.apps.*;
import org.apache.fop.fonts.EmbedFontInfo;
import org.apache.fop.fonts.FontTriplet;
import org.apache.fop.fonts.FontUris;
import org.apache.fop.pdf.PDFFontTrueType;

import javax.xml.transform.*;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

public class App
{
    private final static FopFactory fopFactory = FopFactory.newInstance(new File(".").toURI());
    private final static FOUserAgent foUserAgent = fopFactory.newFOUserAgent();

    public static void main( String[] args )  {
            File xmlfile = new File("src/main/resources/data/cv.xml");
            File xsltfile = new File("src/main/resources/xslt/cv.xslt");
            File pdfDir = new File("out");
            pdfDir.mkdirs();
            Stream.of("en","nl","fr","es")
                    .forEach(lang -> createCVPdf(xmlfile, xsltfile, pdfDir, lang));
    }

    private static void createCVPdf(File xmlfile, File xsltfile, File pdfDir,String lang) {
        File pdfFile = new File(pdfDir, "cv_" + lang +".pdf");

        // Setup output
        try (OutputStream out1 = new FileOutputStream(pdfFile)) {
            OutputStream out = new java.io.BufferedOutputStream(out1);

            // Construct fop with desired output format
            Fop fop;

            fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent, out);


            // Setup XSLT
            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(new StreamSource(xsltfile));
            transformer.setParameter("language", lang);

            // Setup input for XSLT transformation
            Source src = new StreamSource(xmlfile);

            // Resulting SAX events (the generated FO) must be piped through to FOP
            Result res = new SAXResult(fop.getDefaultHandler());

            // Start XSLT transformation and FOP processing
            transformer.transform(src, res);
            out.close();
        } catch (FOPException | TransformerException | IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
