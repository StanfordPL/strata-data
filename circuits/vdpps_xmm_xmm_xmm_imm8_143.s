  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  mulps %xmm3, %xmm2                              #  2     0x5   3      OPC=mulps_xmm_xmm           
  vaddsubps %xmm8, %xmm2, %xmm2                   #  3     0x8   5      OPC=vaddsubps_xmm_xmm_xmm   
  vmovshdup %xmm2, %xmm1                          #  4     0xd   4      OPC=vmovshdup_xmm_xmm       
  vpunpckhdq %xmm1, %xmm1, %xmm1                  #  5     0x11  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  retq                                            #  6     0x15  1      OPC=retq                    
                                                                                                    
.size target, .-target
