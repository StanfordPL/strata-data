  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode           
.target:                                    #        0     0      OPC=<label>      
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label  
  shlb $0x1, %r8b                           #  2     0x5   3      OPC=shlb_r8_one  
  callq .move_byte_11_of_ymm1_to_r9b        #  3     0x8   5      OPC=callq_label  
  callq .read_sf_into_rbx                   #  4     0xd   5      OPC=callq_label  
  callq .move_byte_10_of_ymm1_to_r8b        #  5     0x12  5      OPC=callq_label  
  callq .move_008_016_r8b_r9b_bx            #  6     0x17  5      OPC=callq_label  
  retq                                      #  7     0x1c  1      OPC=retq         
                                                                                   
.size target, .-target
