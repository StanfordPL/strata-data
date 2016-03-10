  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                
.target:                                          #        0    0      OPC=<label>           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label       
  cvtss2sd %xmm9, %xmm2                           #  2     0x5  5      OPC=cvtss2sd_xmm_xmm  
  unpckhps %xmm2, %xmm1                           #  3     0xa  3      OPC=unpckhps_xmm_xmm  
  retq                                            #  4     0xd  1      OPC=retq              
                                                                                             
.size target, .-target
