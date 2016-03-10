  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP  Bytes  Opcode             
.target:                                    #        0    0      OPC=<label>        
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label    
  callq .move_r8b_to_byte_6_of_ymm1         #  2     0x5  5      OPC=callq_label    
  pandn %xmm1, %xmm1                        #  3     0xa  4      OPC=pandn_xmm_xmm  
  retq                                      #  4     0xe  1      OPC=retq           
                                                                                    
.size target, .-target
