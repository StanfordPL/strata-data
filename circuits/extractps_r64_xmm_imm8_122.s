  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode              
.target:                            #        0    0      OPC=<label>         
  callq .move_128_064_xmm1_r10_r11  #  1     0    5      OPC=callq_label     
  movswl %r10w, %ebx                #  2     0x5  4      OPC=movswl_r32_r16  
  xaddl %ebx, %r11d                 #  3     0x9  4      OPC=xaddl_r32_r32   
  retq                              #  4     0xd  1      OPC=retq            
                                                                             
.size target, .-target
