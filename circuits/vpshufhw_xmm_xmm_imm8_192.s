  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode           
.target:                                    #        0     0      OPC=<label>      
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label  
  callq .move_128_064_xmm2_r12_r13          #  2     0x5   5      OPC=callq_label  
  vzeroall                                  #  3     0xa   3      OPC=vzeroall     
  callq .move_064_128_r12_r13_xmm1          #  4     0xd   5      OPC=callq_label  
  callq .move_r8b_to_byte_10_of_ymm1        #  5     0x12  5      OPC=callq_label  
  callq .move_r8b_to_byte_12_of_ymm1        #  6     0x17  5      OPC=callq_label  
  callq .move_byte_9_of_ymm1_to_r8b         #  7     0x1c  5      OPC=callq_label  
  callq .move_r8b_to_byte_11_of_ymm1        #  8     0x21  5      OPC=callq_label  
  callq .move_r8b_to_byte_13_of_ymm1        #  9     0x26  5      OPC=callq_label  
  retq                                      #  10    0x2b  1      OPC=retq         
                                                                                   
.size target, .-target