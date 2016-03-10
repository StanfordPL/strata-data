  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode           
.target:                                    #        0     0      OPC=<label>      
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label  
  testb %ah, %al                            #  2     0x5   2      OPC=testb_r8_rh  
  callq .move_byte_14_of_ymm1_to_r8b        #  3     0x7   5      OPC=callq_label  
  callq .read_zf_into_rbx                   #  4     0xc   5      OPC=callq_label  
  bswap %r9d                                #  5     0x11  3      OPC=bswap_r32    
  callq .move_008_016_r8b_r9b_bx            #  6     0x14  5      OPC=callq_label  
  retq                                      #  7     0x19  1      OPC=retq         
                                                                                   
.size target, .-target
