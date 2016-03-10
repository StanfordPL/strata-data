  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vmovddup %xmm1, %xmm10                    #  1     0     4      OPC=vmovddup_xmm_xmm    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label         
  callq .move_r8b_to_byte_30_of_ymm1        #  3     0x9   5      OPC=callq_label         
  vminsd %xmm10, %xmm1, %xmm1               #  4     0xe   5      OPC=vminsd_xmm_xmm_xmm  
  retq                                      #  5     0x13  1      OPC=retq                
                                                                                          
.size target, .-target
