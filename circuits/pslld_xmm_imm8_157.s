  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode               
.target:                               #        0     0      OPC=<label>          
  xorps %xmm12, %xmm12                 #  1     0     4      OPC=xorps_xmm_xmm    
  vmovupd %xmm12, %xmm3                #  2     0x4   5      OPC=vmovupd_xmm_xmm  
  callq .move_128_64_xmm3_xmm10_xmm11  #  3     0x9   5      OPC=callq_label      
  movupd %xmm11, %xmm1                 #  4     0xe   5      OPC=movupd_xmm_xmm   
  retq                                 #  5     0x13  1      OPC=retq             
                                                                                  
.size target, .-target
