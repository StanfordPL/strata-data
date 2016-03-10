  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode           
.target:                                    #        0     0      OPC=<label>      
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label  
  callq .move_016_032_r8w_r9w_ebx           #  2     0x5   5      OPC=callq_label  
  shlb $0x1, %bh                            #  3     0xa   2      OPC=shlb_rh_one  
  callq .move_r9b_to_byte_12_of_ymm1        #  4     0xc   5      OPC=callq_label  
  callq .move_byte_3_of_rbx_to_r9b          #  5     0x11  5      OPC=callq_label  
  callq .move_r9b_to_byte_13_of_ymm1        #  6     0x16  5      OPC=callq_label  
  retq                                      #  7     0x1b  1      OPC=retq         
                                                                                   
.size target, .-target
