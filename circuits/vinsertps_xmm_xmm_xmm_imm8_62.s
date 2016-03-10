  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                  
.target:                                          #        0    0      OPC=<label>             
  vmovq %xmm2, %xmm1                              #  1     0    4      OPC=vmovq_xmm_xmm       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4  5      OPC=callq_label         
  vminss %xmm1, %xmm8, %xmm1                      #  3     0x9  4      OPC=vminss_xmm_xmm_xmm  
  retq                                            #  4     0xd  1      OPC=retq                
                                                                                               
.size target, .-target
