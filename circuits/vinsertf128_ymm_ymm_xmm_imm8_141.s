  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmovdqu %xmm3, %xmm11                 #  1     0     4      OPC=vmovdqu_xmm_xmm     
  vmaxpd %ymm2, %ymm2, %ymm1            #  2     0x4   4      OPC=vmaxpd_ymm_ymm_ymm  
  vmovupd %ymm1, %ymm10                 #  3     0x8   4      OPC=vmovupd_ymm_ymm     
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xc   5      OPC=callq_label         
  retq                                  #  5     0x11  1      OPC=retq                
                                                                                      
.size target, .-target
