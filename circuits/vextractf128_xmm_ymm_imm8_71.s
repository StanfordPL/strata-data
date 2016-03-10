  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  callq .move_256_128_ymm1_xmm12_xmm13  #  1     0     5      OPC=callq_label        
  movupd %xmm13, %xmm14                 #  2     0x5   5      OPC=movupd_xmm_xmm     
  maxpd %xmm13, %xmm14                  #  3     0xa   5      OPC=maxpd_xmm_xmm      
  vorps %xmm13, %xmm14, %xmm1           #  4     0xf   5      OPC=vorps_xmm_xmm_xmm  
  retq                                  #  5     0x14  1      OPC=retq               
                                                                                     
.size target, .-target
