  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm12, %xmm13, %xmm1    #  2     0x5   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_byte_7_of_ymm1_to_r8b    #  3     0xa   5      OPC=callq_label              
  movzbl %r8b, %esi                    #  4     0xf   4      OPC=movzbl_r32_r8            
  movq %rsi, %rbx                      #  5     0x13  3      OPC=movq_r64_r64             
  retq                                 #  6     0x16  1      OPC=retq                     
                                                                                          
.size target, .-target
