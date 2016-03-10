  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  vhaddpd %xmm3, %xmm3, %xmm1                     #  1     0     4      OPC=vhaddpd_xmm_xmm_xmm      
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  2     0x4   5      OPC=callq_label              
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label              
  callq .move_byte_22_of_ymm1_to_r9b              #  4     0xe   5      OPC=callq_label              
  vfmadd132sd %xmm10, %xmm6, %xmm10               #  5     0x13  5      OPC=vfmadd132sd_xmm_xmm_xmm  
  callq .move_r9b_to_byte_17_of_ymm1              #  6     0x18  5      OPC=callq_label              
  vfmadd213sd %xmm3, %xmm10, %xmm8                #  7     0x1d  5      OPC=vfmadd213sd_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x22  5      OPC=callq_label              
  retq                                            #  9     0x27  1      OPC=retq                     
                                                                                                     
.size target, .-target
