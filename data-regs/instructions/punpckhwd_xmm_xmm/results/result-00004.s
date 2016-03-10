  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  unpckhpd %xmm2, %xmm2                #  2     0x5   4      OPC=unpckhpd_xmm_xmm   
  punpcklwd %xmm2, %xmm11              #  3     0x9   5      OPC=punpcklwd_xmm_xmm  
  movupd %xmm11, %xmm1                 #  4     0xe   5      OPC=movupd_xmm_xmm     
  retq                                 #  5     0x13  1      OPC=retq               
                                                                                    
.size target, .-target
