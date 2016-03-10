  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                
.target:                                          #        0    0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label       
  unpckhpd %xmm11, %xmm1                          #  2     0x5  5      OPC=unpckhpd_xmm_xmm  
  movhlps %xmm1, %xmm1                            #  3     0xa  3      OPC=movhlps_xmm_xmm   
  retq                                            #  4     0xd  1      OPC=retq              
                                                                                             
.size target, .-target
