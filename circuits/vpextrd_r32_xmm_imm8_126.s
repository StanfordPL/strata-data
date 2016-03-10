  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                
.target:                          #        0    0      OPC=<label>           
  movmskpd %xmm1, %rbx            #  1     0    4      OPC=movmskpd_r64_xmm  
  callq .move_128_064_xmm1_r8_r9  #  2     0x4  5      OPC=callq_label       
  xaddl %ebx, %r9d                #  3     0x9  4      OPC=xaddl_r32_r32     
  retq                            #  4     0xd  1      OPC=retq              
                                                                             
.size target, .-target
