  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  vfmsub231pd %xmm1, %xmm2, %xmm3           #  1     0     5      OPC=vfmsub231pd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label              
  callq .move_r8b_to_byte_6_of_ymm1         #  3     0xa   5      OPC=callq_label              
  callq .move_r9b_to_byte_2_of_ymm1         #  4     0xf   5      OPC=callq_label              
  vmovsd %xmm3, %xmm1, %xmm1                #  5     0x14  4      OPC=vmovsd_xmm_xmm_xmm       
  retq                                      #  6     0x18  1      OPC=retq                     
                                                                                               
.size target, .-target
