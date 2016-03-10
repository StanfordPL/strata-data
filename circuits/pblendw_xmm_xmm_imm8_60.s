  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  movupd %xmm2, %xmm11                          #  1     0     5      OPC=movupd_xmm_xmm          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label             
  movshdup %xmm11, %xmm0                        #  3     0xa   5      OPC=movshdup_xmm_xmm        
  vpmovsxdq %xmm0, %xmm5                        #  4     0xf   5      OPC=vpmovsxdq_xmm_xmm       
  vmovsldup %xmm2, %xmm15                       #  5     0x14  4      OPC=vmovsldup_xmm_xmm       
  vpunpckhdq %xmm1, %xmm15, %xmm6               #  6     0x18  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1c  5      OPC=callq_label             
  retq                                          #  8     0x21  1      OPC=retq                    
                                                                                                  
.size target, .-target
