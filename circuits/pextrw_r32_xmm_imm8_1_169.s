  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vpmovzxwq %xmm1, %xmm1              #  1     0     5      OPC=vpmovzxwq_xmm_xmm        
  callq .move_128_064_xmm1_r8_r9      #  2     0x5   5      OPC=callq_label              
  callq .move_r8b_to_byte_26_of_ymm1  #  3     0xa   5      OPC=callq_label              
  vpunpckhqdq %xmm1, %xmm1, %xmm2     #  4     0xf   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movd %xmm2, %ebx                    #  5     0x13  4      OPC=movd_r32_xmm             
  retq                                #  6     0x17  1      OPC=retq                     
                                                                                         
.size target, .-target
