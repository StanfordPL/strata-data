  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  xorq %rbx, %rbx                               #  1     0     3      OPC=xorq_r64_r64       
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x3   5      OPC=callq_label        
  vpmovsxdq %xmm7, %xmm3                        #  3     0x8   5      OPC=vpmovsxdq_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11              #  4     0xd   5      OPC=callq_label        
  xaddw %bx, %r10w                              #  5     0x12  5      OPC=xaddw_r16_r16      
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
