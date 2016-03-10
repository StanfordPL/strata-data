  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vbroadcastsd %xmm2, %ymm8                     #  1     0     5      OPC=vbroadcastsd_ymm_xmm     
  vpunpckhqdq %xmm8, %xmm2, %xmm1               #  2     0x5   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label              
  vhsubpd %xmm4, %xmm4, %xmm7                   #  4     0xf   4      OPC=vhsubpd_xmm_xmm_xmm      
  movshdup %xmm2, %xmm4                         #  5     0x13  4      OPC=movshdup_xmm_xmm         
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x17  5      OPC=callq_label              
  retq                                          #  7     0x1c  1      OPC=retq                     
                                                                                                   
.size target, .-target
