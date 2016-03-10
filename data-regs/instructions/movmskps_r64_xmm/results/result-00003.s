  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  vsqrtps %xmm1, %xmm2   #  1     0    4      OPC=vsqrtps_xmm_xmm    
  vmovmskps %xmm2, %ebx  #  2     0x4  4      OPC=vmovmskps_r32_xmm  
  retq                   #  3     0x8  1      OPC=retq               
                                                                     
.size target, .-target
