  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  punpckldq %xmm2, %xmm1          #  1     0     4      OPC=punpckldq_xmm_xmm       
  vbroadcastss %xmm1, %ymm13      #  2     0x4   5      OPC=vbroadcastss_ymm_xmm    
  vunpckhps %xmm13, %xmm1, %xmm9  #  3     0x9   5      OPC=vunpckhps_xmm_xmm_xmm   
  vmovshdup %xmm2, %xmm3          #  4     0xe   4      OPC=vmovshdup_xmm_xmm       
  vpunpckhdq %xmm9, %xmm3, %xmm8  #  5     0x12  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  unpcklpd %xmm8, %xmm9           #  6     0x17  5      OPC=unpcklpd_xmm_xmm        
  movdqu %xmm9, %xmm1             #  7     0x1c  5      OPC=movdqu_xmm_xmm          
  retq                            #  8     0x21  1      OPC=retq                    
                                                                                    
.size target, .-target
