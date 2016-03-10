  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  mulss %xmm8, %xmm1                              #  2     0x5   5      OPC=mulss_xmm_xmm       
  vcvtps2dq %xmm9, %xmm12                         #  3     0xa   5      OPC=vcvtps2dq_xmm_xmm   
  vmovss %xmm1, %xmm12, %xmm0                     #  4     0xf   4      OPC=vmovss_xmm_xmm_xmm  
  movddup %xmm0, %xmm1                            #  5     0x13  4      OPC=movddup_xmm_xmm     
  haddps %xmm0, %xmm1                             #  6     0x17  4      OPC=haddps_xmm_xmm      
  retq                                            #  7     0x1b  1      OPC=retq                
                                                                                                
.size target, .-target
