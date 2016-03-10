  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  movshdup %xmm3, %xmm1             #  1     0     4      OPC=movshdup_xmm_xmm        
  unpcklpd %xmm1, %xmm3             #  2     0x4   4      OPC=unpcklpd_xmm_xmm        
  movupd %xmm3, %xmm12              #  3     0x8   5      OPC=movupd_xmm_xmm          
  vunpckhps %xmm12, %xmm2, %xmm12   #  4     0xd   5      OPC=vunpckhps_xmm_xmm_xmm   
  vpunpckhdq %xmm12, %xmm12, %xmm1  #  5     0x12  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  retq                              #  6     0x17  1      OPC=retq                    
                                                                                      
.size target, .-target
