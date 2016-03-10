  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  vmovups %ymm3, %ymm1                      #  1     0     4      OPC=vmovups_ymm_ymm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label      
  callq .move_128_64_xmm2_xmm12_xmm13       #  3     0x9   5      OPC=callq_label      
  callq .move_r9b_to_byte_8_of_ymm1         #  4     0xe   5      OPC=callq_label      
  movlhps %xmm13, %xmm1                     #  5     0x13  4      OPC=movlhps_xmm_xmm  
  retq                                      #  6     0x17  1      OPC=retq             
                                                                                       
.size target, .-target
