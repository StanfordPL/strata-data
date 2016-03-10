  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  vpor %xmm2, %xmm2, %xmm1            #  1     0     4      OPC=vpor_xmm_xmm_xmm  
  movw %bx, %r9w                      #  2     0x4   4      OPC=movw_r16_r16      
  callq .move_016_008_bx_r10b_r11b    #  3     0x8   5      OPC=callq_label       
  callq .move_r9b_to_byte_12_of_ymm1  #  4     0xd   5      OPC=callq_label       
  xaddb %r9b, %r11b                   #  5     0x12  4      OPC=xaddb_r8_r8       
  callq .move_r9b_to_byte_13_of_ymm1  #  6     0x16  5      OPC=callq_label       
  retq                                #  7     0x1b  1      OPC=retq              
                                                                                  
.size target, .-target
