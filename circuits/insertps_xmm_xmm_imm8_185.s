  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm10, %xmm10, %xmm5     #  2     0x5   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckhdq %xmm5, %xmm1, %xmm7       #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  cvtsd2ss %xmm1, %xmm1                #  4     0xe   4      OPC=cvtsd2ss_xmm_xmm        
  addss %xmm10, %xmm1                  #  5     0x12  5      OPC=addss_xmm_xmm           
  sqrtss %xmm5, %xmm1                  #  6     0x17  4      OPC=sqrtss_xmm_xmm          
  unpcklpd %xmm7, %xmm1                #  7     0x1b  4      OPC=unpcklpd_xmm_xmm        
  retq                                 #  8     0x1f  1      OPC=retq                    
                                                                                         
.size target, .-target
