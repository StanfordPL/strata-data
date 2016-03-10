  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vmovhlps %xmm3, %xmm1, %xmm9                  #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label           
  vmovsd %xmm9, %xmm5, %xmm1                    #  3     0x9   5      OPC=vmovsd_xmm_xmm_xmm    
  movss %xmm2, %xmm1                            #  4     0xe   4      OPC=movss_xmm_xmm         
  retq                                          #  5     0x12  1      OPC=retq                  
                                                                                                
.size target, .-target
