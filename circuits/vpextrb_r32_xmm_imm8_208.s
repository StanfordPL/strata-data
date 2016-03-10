  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  movd %xmm1, %r11d   #  1     0    5      OPC=movd_r32_xmm   
  movzbq %r11b, %rdx  #  2     0x5  4      OPC=movzbq_r64_r8  
  movzbq %dl, %rbx    #  3     0x9  4      OPC=movzbq_r64_r8  
  retq                #  4     0xd  1      OPC=retq           
                                                              
.size target, .-target
