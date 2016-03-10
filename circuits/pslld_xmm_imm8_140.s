  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  vcvtps2dq %xmm10, %xmm0                         #  2     0x5   5      OPC=vcvtps2dq_xmm_xmm    
  vandnps %xmm0, %xmm0, %xmm6                     #  3     0xa   4      OPC=vandnps_xmm_xmm_xmm  
  movupd %xmm6, %xmm1                             #  4     0xe   4      OPC=movupd_xmm_xmm       
  retq                                            #  5     0x12  1      OPC=retq                 
                                                                                                 
.size target, .-target
