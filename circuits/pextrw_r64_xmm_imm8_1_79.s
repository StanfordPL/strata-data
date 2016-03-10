  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  pmovzxwq %xmm7, %xmm2                         #  2     0x5   5      OPC=pmovzxwq_xmm_xmm  
  movmskpd %xmm5, %ebx                          #  3     0xa   4      OPC=movmskpd_r32_xmm  
  movsd %xmm5, %xmm2                            #  4     0xe   4      OPC=movsd_xmm_xmm     
  callq .move_128_064_xmm2_r8_r9                #  5     0x12  5      OPC=callq_label       
  orw %r9w, %bx                                 #  6     0x17  4      OPC=orw_r16_r16       
  retq                                          #  7     0x1b  1      OPC=retq              
                                                                                            
.size target, .-target
