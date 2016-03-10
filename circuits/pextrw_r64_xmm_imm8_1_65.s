  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovsxwq %xmm1, %xmm2                        #  2     0x5   5      OPC=vpmovsxwq_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11              #  3     0xa   5      OPC=callq_label        
  vmovmskpd %xmm6, %ebx                         #  4     0xf   4      OPC=vmovmskpd_r32_xmm  
  movb %bl, %bh                                 #  5     0x13  2      OPC=movb_rh_r8         
  orw %r11w, %bx                                #  6     0x15  4      OPC=orw_r16_r16        
  retq                                          #  7     0x19  1      OPC=retq               
                                                                                             
.size target, .-target
