  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode            
.target:                                    #        0     0      OPC=<label>       
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label   
  shlw $0x1, %dx                            #  2     0x5   3      OPC=shlw_r16_one  
  callq .read_cf_into_rbx                   #  3     0x8   5      OPC=callq_label   
  callq .move_byte_13_of_ymm1_to_r9b        #  4     0xd   5      OPC=callq_label   
  xchgb %r9b, %bl                           #  5     0x12  3      OPC=xchgb_r8_r8   
  retq                                      #  6     0x15  1      OPC=retq          
                                                                                    
.size target, .-target
