  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .move_032_016_ebx_r8w_r9w   #  1     0     5      OPC=callq_label   
  callq .move_byte_7_of_rbx_to_r9b  #  2     0x5   5      OPC=callq_label   
  callq .move_008_016_r8b_r9b_dx    #  3     0xa   5      OPC=callq_label   
  rolw $0x1, %dx                    #  4     0xf   3      OPC=rolw_r16_one  
  adcq %rbx, %rbx                   #  5     0x12  3      OPC=adcq_r64_r64  
  retq                              #  6     0x15  1      OPC=retq          
                                                                            
.size target, .-target
