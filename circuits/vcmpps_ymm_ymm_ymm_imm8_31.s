  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vzeroall                            #  1     0     3      OPC=vzeroall                 
  callq .move_128_064_xmm1_r8_r9      #  2     0x3   5      OPC=callq_label              
  decq %r8                            #  3     0x8   3      OPC=decq_r64                 
  callq .move_064_128_r8_r9_xmm1      #  4     0xb   5      OPC=callq_label              
  callq .move_r9b_to_byte_8_of_ymm1   #  5     0x10  5      OPC=callq_label              
  vpunpcklqdq %ymm1, %ymm1, %ymm9     #  6     0x15  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpxor %xmm9, %xmm10, %xmm8          #  7     0x19  5      OPC=vpxor_xmm_xmm_xmm        
  callq .move_128_256_xmm8_xmm9_ymm1  #  8     0x1e  5      OPC=callq_label              
  retq                                #  9     0x23  1      OPC=retq                     
                                                                                         
.size target, .-target
