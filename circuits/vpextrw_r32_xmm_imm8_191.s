  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  pmovzxwq %xmm7, %xmm13                        #  2     0x5   6      OPC=pmovzxwq_xmm_xmm       
  vaddsubpd %xmm5, %xmm13, %xmm9                #  3     0xb   4      OPC=vaddsubpd_xmm_xmm_xmm  
  vaddsd %xmm7, %xmm9, %xmm3                    #  4     0xf   4      OPC=vaddsd_xmm_xmm_xmm     
  callq .move_128_064_xmm3_r10_r11              #  5     0x13  5      OPC=callq_label            
  movzwl %r11w, %ebx                            #  6     0x18  4      OPC=movzwl_r32_r16         
  retq                                          #  7     0x1c  1      OPC=retq                   
                                                                                                 
.size target, .-target
