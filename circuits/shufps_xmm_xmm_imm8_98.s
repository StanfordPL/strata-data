  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  callq .move_r8b_to_byte_7_of_ymm1         #  2     0x5   5      OPC=callq_label            
  vmovss %xmm1, %xmm2, %xmm6                #  3     0xa   4      OPC=vmovss_xmm_xmm_xmm     
  vunpckhps %xmm6, %xmm1, %xmm4             #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm  
  vunpcklps %xmm6, %xmm4, %xmm7             #  5     0x12  4      OPC=vunpcklps_xmm_xmm_xmm  
  movups %xmm7, %xmm1                       #  6     0x16  3      OPC=movups_xmm_xmm         
  retq                                      #  7     0x19  1      OPC=retq                   
                                                                                             
.size target, .-target
