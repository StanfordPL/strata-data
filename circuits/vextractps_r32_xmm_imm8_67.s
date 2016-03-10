  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                  
.target:                                        #        0    0      OPC=<label>             
  vmaxsd %xmm1, %xmm1, %xmm2                    #  1     0    4      OPC=vmaxsd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4  5      OPC=callq_label         
  vmovd %xmm7, %ebx                             #  3     0x9  4      OPC=vmovd_r32_xmm       
  retq                                          #  4     0xd  1      OPC=retq                
                                                                                             
.size target, .-target
