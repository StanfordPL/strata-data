  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vpor %ymm2, %ymm2, %ymm2    #  1     0     4      OPC=vpor_ymm_ymm_ymm    
  vmaxps %ymm3, %ymm3, %ymm1  #  2     0x4   4      OPC=vmaxps_ymm_ymm_ymm  
  vmovaps %xmm2, %xmm0        #  3     0x8   4      OPC=vmovaps_xmm_xmm     
  vmovaps %xmm0, %xmm2        #  4     0xc   4      OPC=vmovaps_xmm_xmm     
  movss %xmm2, %xmm1          #  5     0x10  4      OPC=movss_xmm_xmm       
  retq                        #  6     0x14  1      OPC=retq                
                                                                            
.size target, .-target
