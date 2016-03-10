  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                   
.target:                              #        0     0      OPC=<label>              
  vxorpd %xmm1, %xmm1, %xmm9          #  1     0     4      OPC=vxorpd_xmm_xmm_xmm   
  vcvttss2sil %xmm9, %ebx             #  2     0x4   5      OPC=vcvttss2sil_r32_xmm  
  callq .move_byte_15_of_ymm1_to_r9b  #  3     0x9   5      OPC=callq_label          
  callq .move_byte_14_of_ymm1_to_r8b  #  4     0xe   5      OPC=callq_label          
  callq .move_008_016_r8b_r9b_bx      #  5     0x13  5      OPC=callq_label          
  retq                                #  6     0x18  1      OPC=retq                 
                                                                                     
.size target, .-target
