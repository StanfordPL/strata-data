  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  pmovzxwq %xmm5, %xmm0                         #  2     0x5   5      OPC=pmovzxwq_xmm_xmm     
  vsqrtss %xmm5, %xmm0, %xmm1                   #  3     0xa   4      OPC=vsqrtss_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11              #  4     0xe   5      OPC=callq_label          
  movzwl %r11w, %ebx                            #  5     0x13  4      OPC=movzwl_r32_r16       
  retq                                          #  6     0x17  1      OPC=retq                 
                                                                                               
.size target, .-target
