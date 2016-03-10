  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  vmovddup %xmm1, %xmm11            #  1     0     4      OPC=vmovddup_xmm_xmm  
  pmovzxwq %xmm11, %xmm3            #  2     0x4   6      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11  #  3     0xa   5      OPC=callq_label       
  movmskpd %xmm3, %ebx              #  4     0xf   4      OPC=movmskpd_r32_xmm  
  xchgw %r11w, %bx                  #  5     0x13  4      OPC=xchgw_r16_r16     
  retq                              #  6     0x17  1      OPC=retq              
                                                                                
.size target, .-target
