  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  callq .move_032_016_ebx_r12w_r13w  #  1     0    5      OPC=callq_label   
  stc                                #  2     0x5  1      OPC=stc           
  rclw $0x1, %r13w                   #  3     0x6  4      OPC=rclw_r16_one  
  rcll $0x1, %ebx                    #  4     0xa  2      OPC=rcll_r32_one  
  retq                               #  5     0xc  1      OPC=retq          
                                                                            
.size target, .-target
