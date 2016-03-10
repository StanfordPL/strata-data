  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  callq .move_064_032_rbx_r10d_r11d  #  1     0    5      OPC=callq_label   
  sall $0x1, %r11d                   #  2     0x5  3      OPC=sall_r32_one  
  adcq %rbx, %rbx                    #  3     0x8  3      OPC=adcq_r64_r64  
  retq                               #  4     0xb  1      OPC=retq          
                                                                            
.size target, .-target
