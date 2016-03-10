  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  movmskpd %xmm7, %ebx                          #  2     0x5   4      OPC=movmskpd_r32_xmm  
  testl %ebx, %ebx                              #  3     0x9   2      OPC=testl_r32_r32     
  pmovzxwq %xmm5, %xmm1                         #  4     0xb   5      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11              #  5     0x10  5      OPC=callq_label       
  cmovlew %r11w, %bx                            #  6     0x15  5      OPC=cmovlew_r16_r16   
  retq                                          #  7     0x1a  1      OPC=retq              
                                                                                            
.size target, .-target
