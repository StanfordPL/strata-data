  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vcvtsd2ss %xmm2, %xmm3, %xmm1   #  1     0     4      OPC=vcvtsd2ss_xmm_xmm_xmm   
  vpunpckhdq %xmm1, %xmm1, %xmm5  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckhdq %xmm5, %xmm2, %xmm8  #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movss %xmm2, %xmm1              #  4     0xc   4      OPC=movss_xmm_xmm           
  unpcklpd %xmm8, %xmm1           #  5     0x10  5      OPC=unpcklpd_xmm_xmm        
  retq                            #  6     0x15  1      OPC=retq                    
                                                                                    
.size target, .-target
