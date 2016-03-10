  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode             
.target:                              #        0    0      OPC=<label>        
  callq .move_032_016_ebx_r8w_r9w     #  1     0    5      OPC=callq_label    
  xchgw %r8w, %r9w                    #  2     0x5  4      OPC=xchgw_r16_r16  
  callq .move_r9b_to_byte_11_of_ymm1  #  3     0x9  5      OPC=callq_label    
  retq                                #  4     0xe  1      OPC=retq           
                                                                              
.size target, .-target
