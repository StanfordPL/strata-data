  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vunpcklps %xmm1, %xmm1, %xmm4        #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm    
  vpunpckhqdq %xmm1, %xmm4, %xmm13     #  2     0x4   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movdqu %xmm4, %xmm12                 #  3     0x8   5      OPC=movdqu_xmm_xmm           
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xd   5      OPC=callq_label              
  callq .move_128_064_xmm1_r8_r9       #  5     0x12  5      OPC=callq_label              
  callq .move_032_064_r8d_r9d_rbx      #  6     0x17  5      OPC=callq_label              
  retq                                 #  7     0x1c  1      OPC=retq                     
                                                                                          
.size target, .-target
