  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vsubps %xmm11, %xmm11, %xmm12                   #  2     0x5   5      OPC=vsubps_xmm_xmm_xmm      
  vunpckhps %ymm12, %ymm12, %ymm12                #  3     0xa   5      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckldq %xmm11, %xmm12, %xmm11               #  4     0xf   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movsd %xmm11, %xmm1                             #  5     0x14  5      OPC=movsd_xmm_xmm           
  retq                                            #  6     0x19  1      OPC=retq                    
                                                                                                    
.size target, .-target
