  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vaddsd %xmm1, %xmm1, %xmm8           #  1     0     4      OPC=vaddsd_xmm_xmm_xmm    
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x4   5      OPC=callq_label           
  vmovhlps %xmm11, %xmm8, %xmm11       #  3     0x9   5      OPC=vmovhlps_xmm_xmm_xmm  
  movq %xmm11, %xmm1                   #  4     0xe   5      OPC=movq_xmm_xmm          
  retq                                 #  5     0x13  1      OPC=retq                  
                                                                                       
.size target, .-target
