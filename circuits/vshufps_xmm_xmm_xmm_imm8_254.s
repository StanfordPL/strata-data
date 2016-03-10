  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                    
.target:                         #        0    0      OPC=<label>               
  vmovshdup %xmm3, %xmm11        #  1     0    4      OPC=vmovshdup_xmm_xmm     
  vmovhlps %xmm2, %xmm11, %xmm1  #  2     0x4  4      OPC=vmovhlps_xmm_xmm_xmm  
  retq                           #  3     0x8  1      OPC=retq                  
                                                                                
.size target, .-target
