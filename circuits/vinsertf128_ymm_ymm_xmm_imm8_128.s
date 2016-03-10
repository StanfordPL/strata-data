  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vaddss %xmm3, %xmm3, %xmm4  #  1     0    4      OPC=vaddss_xmm_xmm_xmm  
  vorps %ymm2, %ymm4, %ymm1   #  2     0x4  4      OPC=vorps_ymm_ymm_ymm   
  movupd %xmm3, %xmm1         #  3     0x8  4      OPC=movupd_xmm_xmm      
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
