  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vmovshdup %xmm2, %xmm9       #  1     0    4      OPC=vmovshdup_xmm_xmm   
  vorps %xmm9, %xmm9, %xmm11   #  2     0x4  5      OPC=vorps_xmm_xmm_xmm   
  vmovsd %xmm11, %xmm3, %xmm1  #  3     0x9  5      OPC=vmovsd_xmm_xmm_xmm  
  retq                         #  4     0xe  1      OPC=retq                
                                                                            
.size target, .-target
