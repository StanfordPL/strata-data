  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovshdup %xmm2, %xmm9            #  1     0     4      OPC=vmovshdup_xmm_xmm        
  vunpckhps %xmm3, %xmm3, %xmm1     #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckldq %xmm1, %xmm3, %xmm3    #  3     0x8   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpckhqdq %ymm3, %ymm9, %ymm12  #  4     0xc   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vminps %ymm12, %ymm12, %ymm1      #  5     0x10  5      OPC=vminps_ymm_ymm_ymm       
  retq                              #  6     0x15  1      OPC=retq                     
                                                                                       
.size target, .-target
