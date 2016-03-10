  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovss %xmm2, %xmm1, %xmm7  #  1     0    4      OPC=vmovss_xmm_xmm_xmm  
  vrsqrtps %ymm7, %ymm12      #  2     0x4  4      OPC=vrsqrtps_ymm_ymm    
  movss %xmm12, %xmm1         #  3     0x8  5      OPC=movss_xmm_xmm       
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
