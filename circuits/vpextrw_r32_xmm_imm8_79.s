  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode           
.target:                                    #        0     0      OPC=<label>      
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label  
  callq .move_byte_14_of_ymm1_to_r8b        #  2     0x5   5      OPC=callq_label  
  cmpb %dl, %dl                             #  3     0xa   2      OPC=cmpb_r8_r8   
  callq .move_byte_15_of_ymm1_to_r9b        #  4     0xc   5      OPC=callq_label  
  callq .read_zf_into_rbx                   #  5     0x11  5      OPC=callq_label  
  callq .move_008_016_r8b_r9b_bx            #  6     0x16  5      OPC=callq_label  
  retq                                      #  7     0x1b  1      OPC=retq         
                                                                                   
.size target, .-target
