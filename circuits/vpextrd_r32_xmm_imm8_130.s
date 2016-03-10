  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vpmovsxwq %xmm1, %ymm10        #  1     0     5      OPC=vpmovsxwq_ymm_xmm     
  divss %xmm10, %xmm1            #  2     0x5   5      OPC=divss_xmm_xmm         
  vmovhlps %xmm1, %xmm10, %xmm1  #  3     0xa   4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovd %xmm1, %ebx              #  4     0xe   4      OPC=vmovd_r32_xmm         
  retq                           #  5     0x12  1      OPC=retq                  
                                                                                 
.size target, .-target
