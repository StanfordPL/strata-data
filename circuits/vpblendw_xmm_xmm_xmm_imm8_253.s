  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_064_xmm3_r12_r13          #  1     0     5      OPC=callq_label        
  vpmovzxbd %xmm2, %ymm2                    #  2     0x5   5      OPC=vpmovzxbd_ymm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0xa   5      OPC=callq_label        
  vzeroall                                  #  4     0xf   3      OPC=vzeroall           
  callq .move_064_128_r12_r13_xmm1          #  5     0x12  5      OPC=callq_label        
  callq .move_r8b_to_byte_2_of_ymm1         #  6     0x17  5      OPC=callq_label        
  movzbw %r9b, %r8w                         #  7     0x1c  5      OPC=movzbw_r16_r8      
  callq .move_r8b_to_byte_3_of_ymm1         #  8     0x21  5      OPC=callq_label        
  retq                                      #  9     0x26  1      OPC=retq               
                                                                                         
.size target, .-target
