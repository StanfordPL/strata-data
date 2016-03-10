  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vsubsd %xmm7, %xmm7, %xmm9                    #  2     0x5   4      OPC=vsubsd_xmm_xmm_xmm    
  vmovhlps %xmm2, %xmm9, %xmm6                  #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm  
  movlhps %xmm6, %xmm1                          #  4     0xd   3      OPC=movlhps_xmm_xmm       
  retq                                          #  5     0x10  1      OPC=retq                  
                                                                                                
.size target, .-target
