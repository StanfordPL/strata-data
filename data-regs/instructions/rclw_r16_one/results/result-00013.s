  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode            
.target:                            #        0     0      OPC=<label>       
  callq .read_cf_into_rcx           #  1     0     5      OPC=callq_label   
  callq .move_016_008_cx_r12b_r13b  #  2     0x5   5      OPC=callq_label   
  callq .move_008_016_r12b_r13b_cx  #  3     0xa   5      OPC=callq_label   
  callq .clear_cf                   #  4     0xf   5      OPC=callq_label   
  sarq %cl, %rcx                    #  5     0x14  3      OPC=sarq_r64_cl   
  adcw %bx, %bx                     #  6     0x17  3      OPC=adcw_r16_r16  
  retq                              #  7     0x1a  1      OPC=retq          
                                                                            
.size target, .-target
