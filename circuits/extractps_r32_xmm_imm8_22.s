  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                
.target:                            #        0    0      OPC=<label>           
  callq .move_128_064_xmm1_r10_r11  #  1     0    5      OPC=callq_label       
  movmskpd %xmm1, %ebx              #  2     0x5  4      OPC=movmskpd_r32_xmm  
  xchgl %ebx, %r11d                 #  3     0x9  3      OPC=xchgl_r32_r32     
  retq                              #  4     0xc  1      OPC=retq              
                                                                               
.size target, .-target
