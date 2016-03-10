  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                
.target:                                        #        0    0      OPC=<label>           
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0    5      OPC=callq_label       
  movmskpd %xmm1, %rbx                          #  2     0x5  4      OPC=movmskpd_r64_xmm  
  xaddl %ebx, %r13d                             #  3     0x9  4      OPC=xaddl_r32_r32     
  retq                                          #  4     0xd  1      OPC=retq              
                                                                                           
.size target, .-target
