  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vorps %xmm2, %xmm2, %xmm1                 #  1     0     4      OPC=vorps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label        
  xaddw %r9w, %bx                           #  3     0x9   5      OPC=xaddw_r16_r16      
  callq .move_r9b_to_byte_8_of_ymm1         #  4     0xe   5      OPC=callq_label        
  retq                                      #  5     0x13  1      OPC=retq               
                                                                                         
.size target, .-target
