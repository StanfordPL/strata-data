  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                
.target:                                #        0     0      OPC=<label>           
  vmovupd %xmm2, %xmm4                  #  1     0     4      OPC=vmovupd_xmm_xmm   
  vmovdqa %ymm4, %ymm12                 #  2     0x4   4      OPC=vmovdqa_ymm_ymm   
  vpor %xmm3, %xmm3, %xmm13             #  3     0x8   4      OPC=vpor_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xc   5      OPC=callq_label       
  retq                                  #  5     0x11  1      OPC=retq              
                                                                                    
.size target, .-target
