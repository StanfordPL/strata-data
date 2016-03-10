  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  vmovddup %xmm2, %xmm13  #  1     0    4      OPC=vmovddup_xmm_xmm  
  vrsqrtps %ymm13, %ymm2  #  2     0x4  5      OPC=vrsqrtps_ymm_ymm  
  movss %xmm2, %xmm1      #  3     0x9  4      OPC=movss_xmm_xmm     
  retq                    #  4     0xd  1      OPC=retq              
                                                                     
.size target, .-target
