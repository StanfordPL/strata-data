  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  vunpcklpd %xmm2, %xmm1, %xmm0             #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_r8b_to_byte_1_of_ymm1         #  3     0x9   5      OPC=callq_label            
  punpckhqdq %xmm0, %xmm1                   #  4     0xe   4      OPC=punpckhqdq_xmm_xmm     
  retq                                      #  5     0x12  1      OPC=retq                   
                                                                                             
.size target, .-target
