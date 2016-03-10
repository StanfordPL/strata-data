  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  vmovdqa %ymm3, %ymm1                      #  2     0x5   4      OPC=vmovdqa_ymm_ymm  
  callq .move_r9b_to_byte_12_of_ymm1        #  3     0x9   5      OPC=callq_label      
  movsd %xmm2, %xmm1                        #  4     0xe   4      OPC=movsd_xmm_xmm    
  retq                                      #  5     0x12  1      OPC=retq             
                                                                                       
.size target, .-target
