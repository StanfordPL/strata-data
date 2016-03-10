  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode               
.target:                                        #        0    0      OPC=<label>          
  vmovdqu %xmm1, %xmm2                          #  1     0    4      OPC=vmovdqu_xmm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x4  5      OPC=callq_label      
  movzwl %r13w, %ebx                            #  3     0x9  4      OPC=movzwl_r32_r16   
  retq                                          #  4     0xd  1      OPC=retq             
                                                                                          
.size target, .-target
