  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_064_xmm1_r10_r11              #  1     0     5      OPC=callq_label        
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label        
  callq .move_064_128_r10_r11_xmm2              #  3     0xa   5      OPC=callq_label        
  vmovmskpd %xmm2, %ebx                         #  4     0xf   4      OPC=vmovmskpd_r32_xmm  
  xaddw %r11w, %bx                              #  5     0x13  5      OPC=xaddw_r16_r16      
  retq                                          #  6     0x18  1      OPC=retq               
                                                                                             
.size target, .-target
