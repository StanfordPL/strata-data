  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                  
.target:                          #        0    0      OPC=<label>             
  vmaxpd %xmm2, %xmm2, %xmm1      #  1     0    4      OPC=vmaxpd_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9  #  2     0x4  5      OPC=callq_label         
  vmovd %r8d, %xmm1               #  3     0x9  5      OPC=vmovd_xmm_r32       
  retq                            #  4     0xe  1      OPC=retq                
                                                                               
.size target, .-target
