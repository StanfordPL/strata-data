  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode             
.target:                          #        0     0      OPC=<label>        
  callq .move_128_064_xmm1_r8_r9  #  1     0     5      OPC=callq_label    
  sarw $0x1, %r9w                 #  2     0x5   4      OPC=sarw_r16_one   
  callq .read_of_into_rbx         #  3     0x9   5      OPC=callq_label    
  xaddl %ebx, %r8d                #  4     0xe   4      OPC=xaddl_r32_r32  
  retq                            #  5     0x12  1      OPC=retq           
                                                                           
.size target, .-target
