  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm1                        #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_byte_31_of_ymm1_to_r8b            #  2     0x5   5      OPC=callq_label        
  callq .move_r8b_to_byte_25_of_ymm1            #  3     0xa   5      OPC=callq_label        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  4     0xf   5      OPC=callq_label        
  movd %xmm5, %ebx                              #  5     0x14  4      OPC=movd_r32_xmm       
  retq                                          #  6     0x18  1      OPC=retq               
                                                                                             
.size target, .-target
