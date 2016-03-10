  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  unpckhpd %xmm1, %xmm1               #  1     0     4      OPC=unpckhpd_xmm_xmm    
  vxorps %xmm8, %xmm8, %xmm0          #  2     0x4   5      OPC=vxorps_xmm_xmm_xmm  
  callq .move_byte_15_of_ymm1_to_r9b  #  3     0x9   5      OPC=callq_label         
  callq .move_byte_6_of_ymm1_to_r8b   #  4     0xe   5      OPC=callq_label         
  cvtss2sil %xmm0, %ebx               #  5     0x13  4      OPC=cvtss2sil_r32_xmm   
  callq .move_008_016_r8b_r9b_bx      #  6     0x17  5      OPC=callq_label         
  retq                                #  7     0x1c  1      OPC=retq                
                                                                                    
.size target, .-target
