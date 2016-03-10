  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label              
  vmovlhps %xmm9, %xmm1, %xmm11      #  2     0x5   5      OPC=vmovlhps_xmm_xmm_xmm     
  vfmsub132ps %xmm3, %xmm11, %xmm2   #  3     0xa   5      OPC=vfmsub132ps_xmm_xmm_xmm  
  vmovdqu %xmm2, %xmm1               #  4     0xf   4      OPC=vmovdqu_xmm_xmm          
  retq                               #  5     0x13  1      OPC=retq                     
                                                                                        
.size target, .-target
