  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  vmovdqu %xmm2, %xmm13                     #  2     0x5   4      OPC=vmovdqu_xmm_xmm  
  callq .move_r9b_to_byte_11_of_ymm1        #  3     0x9   5      OPC=callq_label      
  vmovdqa %xmm1, %xmm12                     #  4     0xe   4      OPC=vmovdqa_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1       #  5     0x12  5      OPC=callq_label      
  retq                                      #  6     0x17  1      OPC=retq             
                                                                                       
.size target, .-target
