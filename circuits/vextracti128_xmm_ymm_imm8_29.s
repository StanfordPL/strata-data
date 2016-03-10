  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vrsqrtps %ymm1, %ymm9                 #  2     0x5   4      OPC=vrsqrtps_ymm_ymm    
  vdivpd %xmm9, %xmm9, %xmm1            #  3     0x9   5      OPC=vdivpd_xmm_xmm_xmm  
  movupd %xmm11, %xmm1                  #  4     0xe   5      OPC=movupd_xmm_xmm      
  retq                                  #  5     0x13  1      OPC=retq                
                                                                                      
.size target, .-target
