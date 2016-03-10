  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                  
.target:                                        #        0    0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label         
  vmulsd %xmm7, %xmm5, %xmm0                    #  2     0x5  4      OPC=vmulsd_xmm_xmm_xmm  
  movhlps %xmm0, %xmm1                          #  3     0x9  3      OPC=movhlps_xmm_xmm     
  retq                                          #  4     0xc  1      OPC=retq                
                                                                                             
.size target, .-target
